# $Id: config.rb,v 1.35 2005-05-09 11:54:36 fdiary Exp $
# Copyright (C) 2004-2005 Kazuhiko <kazuhiko@fdiary.net>
#
# TADA Tadashi <sho@spc.gr.jp> holds the copyright of Config class.

HIKI_VERSION  = '0.7-devel-20050509'

require 'cgi'
require 'hiki/command'

module Hiki
  PATH  = "#{File::dirname(File::dirname(__FILE__))}"

  class Config
    def initialize
      load
      default
      load_cgi_conf

      require "style/#{@style}/parser"
      require "style/#{@style}/html_formatter"
      require "hiki/repos/#{@repos_type}"
      require "messages/#{@lang}"
      require "hiki/db/#{@database_type}"

      # parser class and formatter class
      style = @style.gsub( /\+/, '' )
      @parser = Hiki::const_get( "Parser_#{style}" )
      @formatter = Hiki::const_get( "HTMLFormatter_#{style}" )

      # message module
      extend(Hiki::const_get( "Messages_#{@lang}" ))

      # repository class
      @repos = Hiki::const_get("Repos#{@repos_type.capitalize}").new(@repos_root, @data_path)

      instance_variables.each do |v|
        v.sub!( /@/, '' )
        instance_eval( <<-SRC
        def #{v}
          @#{v}
        end
        def #{v}=(p)
          @#{v} = p
        end
        SRC
        )
      end

      bot = ["googlebot", "Hatena Antenna", "moget@goo.ne.jp"]
      bot += @options['bot'] || []
      @bot = Regexp::new( "(#{bot.uniq.join( '|' )})", true )
    end

    def bot?
      @bot =~ ENV['HTTP_USER_AGENT']
    end

    #
    # get/set/delete plugin options
    #
    def []( key )
      @options[key]
    end

    def []=( key, val )
      @options2[key] = @options[key] = val
    end

    def delete( key )
      @options.delete( key )
      @options2.delete( key )
    end

    def save_config
      File::open(self.config_file, "w") do |f|
	f.print ERB::new( File::open( "#{@template_path}/hiki.conf" ){|f| f.read }.untaint ).result( binding )
      end
    end

    def base_url
      unless @base_url
	if !ENV['SCRIPT_NAME']
	  @base_url = ''
	elsif ENV['HTTPS']
	  port = (ENV['SERVER_PORT'] == '443') ? '' : ':' + ENV['SERVER_PORT'].to_s
	  @base_url = "https://#{ ENV['SERVER_NAME'] }#{ port }#{File::dirname(ENV['SCRIPT_NAME'])}/".sub(%r|/+$|, '/')
	else
	  port = (ENV['SERVER_PORT'] == '80') ? '' : ':' + ENV['SERVER_PORT'].to_s
	  @base_url = "http://#{ ENV['SERVER_NAME'] }#{ port }#{File::dirname(ENV['SCRIPT_NAME'])}/".sub(%r|/+$|, '/')
	end
      end
      @base_url
    end

    def index_url
      unless @index_url
	@index_url = (base_url + cgi_name).sub(%r|/\./|, '/')
      end
      @index_url
    end
    
    private

    # loading hikiconf.rb in current directory
    def load
      @secure = true unless @secure
      @options = {}
      eval( File::open( "hikiconf.rb" ){|f| f.read }.untaint, binding, "(hikiconf.rb)", 1 )
      formaterror if $data_path

      raise 'No @data_path variable.' unless @data_path
      @data_path += '/' if /\/$/ !~ @data_path

      # default values
      @smtp_server   ||= 'localhost'
      @use_plugin    ||= false
      @site_name     ||= 'hoge hoge'
      @author_name   ||= ''
      @main_on_update||= false
      @mail          ||= ''
      @theme         ||= 'hiki'
      @theme_url     ||= 'theme'
      @theme_path    ||= 'theme'
      @use_sidebar   ||= false
      @main_class    ||= 'main'
      @sidebar_class ||= 'sidebar'
      @auto_link     ||= false
      @cache_path    ||= "#{@data_path}/cache"
      @style         ||= 'default'
      @hilight_keys  ||= true
      @plugin_debug  ||= false
      @charset       ||= 'EUC-JP'
      @lang          ||= 'ja'
      @database_type ||= 'flatfile'
      @cgi_name      ||= './'
      @repos_type    ||= 'default'
      @use_wikiname    = true if @use_wikiname.nil?
      @options         = {} unless @options.class == Hash
    end

    # loading hiki.conf in @data_path.
    def load_cgi_conf
      raise 'Do not set @data_path as same as Hiki system directory.' if @data_path == "#{PATH}/"

      variables = [:site_name, :author_name, :mail, :theme, :password,
		   :theme_url, :sidebar_class, :main_class, :theme_path,
		   :mail_on_update, :use_sidebar, :auto_link, :options2]
      begin
	cgi_conf = File::open( "#{@data_path}hiki.conf" ){|f| f.read }.untaint
	cgi_conf.gsub!( /^[@$]/, '' )
	def_vars = ''
	variables.each do |var| def_vars << "#{var} = nil\n" end
	eval( def_vars )
	Thread.start {
	  $SAFE = 4
	  eval( cgi_conf, binding, "(hiki.conf)", 1 )
	}.join
	variables.each do |var| eval "@#{var} = #{var} if #{var} != nil" end
      rescue IOError, Errno::ENOENT
      end
      if @options2 then
	@options.update( @options2 )
      else
	@options2 = {}.taint
      end
      formaterror if $site_name
    end

    def default
      @template_path   = "#{PATH}/template"
      @plugin_path     = "#{PATH}/plugin"
      @config_file     = "#{@data_path}/hiki.conf"

      @side_menu       = 'SideMenu'
      @interwiki_name  = 'InterWikiName' 
      @aliaswiki_name  = 'AliasWikiName' 
      @formatting_rule = 'TextFormattingRules'

      @template        = {'view'    => 'view.html',
                          'index'   => 'list.html',
                          'edit'    => 'edit.html',
                          'recent'  => 'list.html',
                          'diff'    => 'diff.html',
                          'search'  => 'form.html',
                          'create'  => 'form.html',
                          'admin'   => 'adminform.html',
                          'save'    => 'success.html',
                          'password'=> 'form.html',
                          'plugin'  => 'plugin.html'
      }
                  
      @max_name_size   = 50 
      @password        = ''
      @generator       = "Hiki #{HIKI_VERSION}"
    end

    def method_missing( *m )
      if m.length == 1 then
        instance_eval( <<-SRC
        def #{m[0]}
          @#{m[0]}
        end
        def #{m[0]}=( p )
          @#{m[0]} = p
        end
        SRC
        )
      end
      nil
    end

    def formaterror
      raise "*** NOTICE ***\n\nThe format of configuration files (i.e. hikiconf.rb and hiki.conf) has changed.\nSee 'doc/VERSIONUP.txt' for more details.\n\n"
    end
  end
end
