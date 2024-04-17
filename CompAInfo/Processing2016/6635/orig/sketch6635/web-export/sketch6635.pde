float x;
float y;
float m;
float n;
float o;
float p;
int a;
int b;
int c;
int d;
int e;
int f;
float speedx;
float speedy;
float speedm;
float speedn;
float speedo;
float speedp;
void setup(){
  size(400,600);
  a=0;
  b=0;
  x=0;
  y=0;
  c=0;
  d=0;
  m=400;
  n=175;
  e=0;
  f=0;
  o=200;
  p=350;  
  frameRate(100);
  speedx=3.0;
  speedy=3.0;
  speedm=3.0;
  speedn=3.0;
  speedo=3.0;
  speedp=3.0;
  rectMode(CENTER);
}

void draw(){
  background(#11ECF2);
  
  if(a==0)x+=speedx;
  if(x>=width-5){
    a=1;
    speedx=(3);
  }
  if(a==1)x-=speedx;
  if(x<=5){
    a=0;
    speedx=(3);
  }
  
  if(b==0)y+=speedy;
  if(y>=height){
    y=0;
  }
  if(b==1)y-=speedy;
  if(y<=5){
    b=0;
    speedy=(3);
  }
 
  if(c==0)m+=speedm;
  if(m>=width-5){
    c=1;
    speedm=(3);
  }
  if(c==1)m-=speedm;
  if(m<=5){
    c=0;
    speedm=(3);
  }
  
  if(d==0)n+=speedn;
  if(n>=height){
    n=0;
  }
  if(d==1)n-=speedn;
  if(n<=5){
    d=0;
    speedn=(3);
  }
  
   if(e==0)o+=speedo;
  if(o>=width-5){
    e=1;
    speedo=(3);
  }
  if(e==1)o-=speedo;
  if(o<=5){
    e=0;
    speedo=(3);
  }
  
  if(f==0)p+=speedp;
  if(p>=height){
    p=0;
  }
  if(f==1)p-=speedp;
  if(p<=5){
    f=0;
    speedp=(3);
  }
  
  fill(255,0,0);
  ellipse(x,y,10,10);
  
  fill(255,0,0);
  ellipse(m,n,10,10);
  
  fill(255,0,0);
  ellipse(o,p,10,10);
  
  fill(#FFE200);
  rect(mouseX,580,50,10);
 
 if(x>=mouseX-30 && y>=565 && y<=575 && x<=mouseX+30){
   b=1;
   speedx=(3);
   speedy=(3);
 }
 
 if(m>=mouseX-30 && n>=565 && n<=575 && m<=mouseX+30){
   d=1;
   speedm=(3);
   speedn=(3);
 }
 
  if(o>=mouseX-30 && p>=565 && p<=575 && o<=mouseX+30)
   f=1;
   speedo=(3);
   speedp=(3);}
