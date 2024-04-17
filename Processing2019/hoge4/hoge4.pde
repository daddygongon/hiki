PImage img;         //read image file
PImage img2;
PGraphics[][] LogoBlock;
final int COL=9;
final int ROW=30;
int ww, hh, ww2, hh2;
color back_color = color(0,0,0,0);

//定義
int[] blockX = new int[80],blockY = new int[80]; 
int[] flag = new int[80];
GanarateBlock[] block = new GanarateBlock[80]; 
int clicked=0;
int bar_x = 200,bar_y=470;    
float ball_x = bar_x + 60/2,ball_y = bar_y - 14/2;   
float vx = random(random(-3, -3),random(3, 3)),vy = -3.5;                                
boolean start_click = false;         
int score = 0;                      
//生成
class GanarateBlock{
  int x, y;
  color c;
 GanarateBlock(int bx, int by,int flag){
    x = bx;
    y = by;
    if(flag==0){
     c =color(0,0,255);
    }else if(flag==1){
     c=color(140,150,255);
    }else{
    c=color(0,0,0);
    }
  }
  void init(){
    fill(c);
    rect(x, y, 37,30);
  }
}
//初期化
void setup(){
  size(400, 500);
  img=loadImage("sample1.png");
   for(int y = 0; y < 8; y++){
    for(int x = 0; x <10; x++){
      int i = x + (y * 10);
      blockX[i] = 7 + 39 * x;
      blockY[i] = 7 + 30 * y;
      block[i] = new GanarateBlock(blockX[i], blockY[i],flag[i]);
    }
  }
}
//描画
void draw(){
  background(0,0,0);
  image(img, 0, 0);
  for(int i = 0; i < block.length; i++){
    block[i].init();
  }
  fill(255,255,255);  
  rect(bar_x, bar_y, 60,15);
  bar_x = mouseX - 60/2;
 
  //画面はみ出してる時
  if(bar_x > width - 60){
    bar_x = width - 60;
  }
  if(bar_x < 0){
    bar_x = 0;
  }
  
  ellipse(ball_x, ball_y,14,14);
  //速度
  if(start_click){
    ball_x += vx;
    ball_y += vy;
  }
  //反射
  if( ball_x > width || ball_x < 0){
    vx *= -1;
  }
  if( ball_y < 0){
    vy *= -1;
  }
   // バー
  if(ball_x > bar_x-5 && ball_x < bar_x + 60 + 5){
    if(ball_y > bar_y && ball_y < bar_y + 6){
      vx += random(-0.5,0.5);
      vy *= -1.01;
    }
  }
   //終了
  if( ball_y > height){
    text("ゲームオーバー", width/2-30, height/2+50);
    text("あなたのスコア:"+score, width/2-35, height/2 + 80);
  }
 //ブロックの遷移
  for(int y = 0; y < 8; y++){
    for(int x = 0; x < 10; x++){
      int i = x + (y * 10);
      blockX[i] = 7 + 39 * x;
      blockY[i] = 7 + 30 * y;
      
      if(flag[i]<2){
        if(ball_y > blockY[i]-5 && ball_y < blockY[i] + 30+5){
          if(ball_x > blockX[i]-5 && ball_x < blockX[i] + 35+5){
            vy *= -1;
            flag[i]++;
            score += 10;                   
          }
        }
         if(ball_y > blockY[i] && ball_y < blockY[i] + 30){
          if(ball_x > blockX[i]-5 && ball_x < blockX[i]-6 ){
            vx *= -1;
            flag[i]++;
          }
          if(ball_x > blockX[i]+5 +37&& ball_x < blockX[i] + 35 + 6){
            vx *= -1;
            flag[i]++;
          }
        }
      }    
     block[i] = new GanarateBlock(blockX[i], blockY[i],flag[i]);   
    }
  }
    text("スコア："+score, 10 ,10);  
  if(clicked%2==0){
    text("画面クリックでスタート。ブロックの隙間を狙おう",width/2-100,10);
  }else{
    text("画面クリックで一時停止。ブロックの隙間を狙おう",width/2-100,10);
  }
}
void mousePressed(){
  start_click = !start_click;
  clicked++;
}
