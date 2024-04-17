float x;
float y;
int a;
int b; 

float speedx;
float speedy;
void setup(){
  size(400,600);
  a=0;
  b=0;
  x=100;
  y=10;
  
  frameRate(5000);
  speedx=1.5;
  speedy=1.5;
  rectMode(CENTER);
}

void draw(){
  background(#030303);

  if(a==0)x+=speedx;
  if(x>=width-5){
    a=1;
    speedx=1.5;
  }
  if(a==1)x-=speedx;
  if(x<=5){
    a=0;
    speedx=1.5;
  }
  

  if(b==0)y+=speedy;
  if(y>=height){
    y=0;
    
  }
  if(b==1)y-=speedy;
  if(y<=5){
    b=0;
    speedy=1.5;
  }
  
  ellipse(x,y,20,20);
  fill(#021BB9);
 rect(mouseX,580,70,10);
 fill(255);
 
 if(x>=mouseX-30 && y>=565 && y<=575 && x<=mouseX+30){
   b=1;
   
   speedx=1.5;
   speedy=1.5;
   
 }
 if(x>=mouseX-30 && y>=565 && y<=585 && x<mouseX-10)a=1;
 if(x>mouseX+10 && y>=565 && y<=585 && x<=mouseX+30)a=0;
 if(y>=575 && x==mouseX-30 && y<=585){
   a=0;
   b=1;
   
 }
 if(y>=575 && x==mouseX+30 && y<=585){
   a=1;
   b=1;
   
 }
 
  
}


