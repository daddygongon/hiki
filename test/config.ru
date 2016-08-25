require 'rack'
require 'pp'

class SimpleApp
  def call(env)
#    body = env.pretty_inspect
#=begin
    request = Rack::Request.new(env)
    body = <<-EOB
Name: #{request.params['name']}
Your Client: #{request.user_agent}
EOB
#=end
    return [200, {'Content-Type' => 'text/plain'}, [body]]
  end
end

run SimpleApp.new
