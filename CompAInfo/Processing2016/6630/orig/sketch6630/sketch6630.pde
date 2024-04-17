
float x;//ボールのx座標
float y;//ボールのy座標
int a;//ボールのx軸移動判定
int b;//ボールのy軸移動判定
int point;//得点
int count;//何回落ちたかカウント,ゲームオーバー
float speedx;//x方向の速さ
float speedy;//y方向の速さ重力の関係で少し早目


void setup(){
  size(400,600);
  a=0;//初期ではx軸右側に
  b=0;//初期ではy軸下側
  x=300;//初期のボールx座標
  y=300;//初期のボールのｙ座標
  point=0;
  count=0;
  frameRate(80);
  speedx=1.0;
  speedy=5.0;
  rectMode(CENTER);
}



void draw(){
  background(255);
  text(point,50,20);//得点の表示左上
  
   //壁とのあたり判定
  if(count<=10){
    if(a==0)x+=speedx;//aが0なら右へ
    if(x>=width-5){
      a=1;
      speedx=random(3);
    }
    if(a==1)x-=speedx;//aが0なら左へ
    if(x<=5){
      a=0;
      speedx=random(3);
    }
    
  
    if(b==0)y+=speedy;
    if(y>=height){
      y=0;
      count++;
    }
  }
  
  if(b==1)y-=speedy;
  if(y<=5){
    b=0;
    speedy=random(3,5);
  }
  
  ellipse(x,y,10,10);//球
  fill(0);
 rect(mouseX,580,50,10);//板
 fill(0,0,255);
 if(x>=mouseX-30 && y>=565 && y<=575 && x<=mouseX+30){
   b=1;
   if(count<=10){
   point+=100;
   speedx=random(3);
   speedy=random(3,5);
   }
 }
 if(x>=mouseX-30 && y>=565 && y<=585 && x<mouseX-10)a=1;
 if(x>mouseX+10 && y>=565 && y<=585 && x<=mouseX+30)a=0;
 if(y>=575 && x==mouseX-30 && y<=585){
   a=0;
   b=1;
   if(count<=10){
   point+=100;
   }
 }
 if(y>=575 && x==mouseX+30 && y<=585){
   a=1;
   b=1;
   if(count<=10){
   point+=100;
   }
 }
 if(count>10){//10回落ちたらゲームオーバー
   fill(255,0,0);
   textAlign(CENTER);
   textSize(28);
   text("GAME OVER",width/2,height/2);
   textAlign(300,20);
   textSize(20);
   text("Retry(R)",300,20);
   textAlign(300,40);
   textSize(20);
   text("Quit(Q)",300,40);
   if ((keyPressed == true) && 
      (key == 'q' || key == 'Q')) {
    exit();
      }
    if ((keyPressed == true) && 
      (key == 'r' || key == 'R')) {
      point=0;
      count-=10;
      background(255);
      }

  }
      
      

  
 if(point>=1000){
   speedx=random(5);
   speedy=random(5,7);
 }
 if(point>=2000){
   speedx=random(7);
   speedy=random(7,10);
 }

if(count==5){
   speedx=random(3);
   speedy=random(3,5);
   if(point>=1000){
     speedx=random(8);
     speedy=random(8);
   }
 }
 if(point>=3000){
   speedx=random(9);
   speedy=random(9,13);
 }
  if(point>=4000){
   speedx=random(11);
   speedy=random(11,15);
 }
 

}