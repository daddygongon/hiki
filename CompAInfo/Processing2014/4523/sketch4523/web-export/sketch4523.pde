float x;
float y;
int a;
int b;//
int point;
int count;
float speedx;
float speedy;
void setup(){
  size(400,600);  
 a=0;
 b=0;  
 x=300;
 y=300;
 point=0;  
 count=0;  
 frameRate(100); 
 speedx=1.0;  
 speedy=5.0;  
 rectMode(CENTER);
 }
 void draw(){
   background(0,0,0);
   text(point,50,20);
   if(a==0)x+=speedx;
   if(x>=width-5){    a=1;    speedx=random(5);  }
   if(a==1)x-=speedx;
   if(x<=5){
     a=0;    speedx=random(5);  
}
if(b==0)y+=speedy;
if(y>=height){
 y=0;    
 count++;
 }  
 if(b==1)y-=speedy;
 if(y<=5){    b=0; speedy=random(5,15);  
 }
 ellipse(x,y,10,10);
 fill(255,255,255); 
 rect(mouseX,580,50,10);
 fill(255,0,0); 
 if(x>=mouseX-30 && y>=565 && y<=575 && x<=mouseX+30){ 
   b=1;   
 if(count<=10){   point+=100;   speedx=random(3);   speedy=random(3,5);  
 } 
} 
if(x>=mouseX-30 && y>=565 && y<=585 && x<mouseX-10)a=1; 
if(x>mouseX+10 && y>=565 && y<=585 && x<=mouseX+30)a=0; 
if(y>=575 && x==mouseX-30 && y<=585){ 
  a=0;   b=1;   if(count<=10){   point+=100; 
 } 
 } 
 if(y>=575 && x==mouseX+30 && y<=585){
   a=1;   b=1;   if(count<=10){   point+=100;   } } 
 if(count>2){textAlign(CENTER); 
 textSize(28);
 text("GAME OVER",width/2,height/2); 
} 
}


