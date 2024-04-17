
import ddf.minim.*;
Minim minim;
AudioPlayer song;

String[] s = { "LIFE.mp3", "gunjyoubiyori.mp3", "motteke.mp3" };
float x;
float y;
int a;
int b;
int point;
int count;
float speedx;
float speedy;

void setup(){
  size(400,600);
  a=0;
  b=0;
  x=0;
  y=0;
  point=0;
  count=0;
  frameRate(75);
  speedx=1.0;
  speedy=5.0;
  rectMode(CENTER);
  noCursor();
//  float r = random(3);
//  minim = new Minim( this );
//  song = minim.loadFile(s[(int)r]);
//  song.play();
}

void draw(){
  background(255);
  if(point>20000)background(255,100,0);
  text(point,50,20);
  text(count,350,20);
  
  
  if(a==0) x+=speedx;
  if(a==1) x-=speedx;
  if(x>=width-5)a=1;
  
  if(x<=5)a=0;
  
   if(b==0) y+=speedy;
   if(b==1) y-=speedy;
  if(y>=height){
    x=0;
    y=0;
    count++;
  }
 
  if(y<=5)b=0;
  fill(255,0,0);
  ellipse(x,y,10,10);
  noStroke();
  fill(0);
  rect(mouseX,mouseY,30,10);
  fill(0,0,255);
  if(x>=mouseX-20 && y>=mouseY-10 && y<=mouseY+10 && x<=mouseX+20){
    b=1;
    if(count<10)point+=100;
  }
 if(y>=mouseY-10 && x==mouseX-20 && y<=mouseY+10){ 
    a=0;
    b=1; 
  if(count<10)point+=100;  
}
  if(point>2500)frameRate(85);
   if(point>5000)frameRate(100);
    if(point>15000)frameRate(125);
     if(point>20000)frameRate(150);
      if(point>25000)frameRate(175);
       if(point>30000)frameRate(200); 
       
 if(count>=10){
    textAlign(CENTER);
    textSize(28);
    text("GAME OVER",width/2,height/2);
 }
 
 if(point>35000){
    textAlign(CENTER);
    textSize(28);
    text("GAME CLEAR",width/2,height/2);
 }

}

  void stop()
{
  song.close();
  minim.stop();
  super.stop();
}

