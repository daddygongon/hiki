float x,y,xx,yy,xxx,yyy;
int rad = 60;
float yspeed = 5;
float ydirection =1;
int py =500;
int px =50;
int pw = 50;
int ph = 10;
int count = 0;
int t = 0;
int gseq;


void setup(){
  size(600,600);
  x=width/2;
  y=0;
  textSize(100);
}
void draw(){
  background(10);
  
 
  
  if(t>=900){
    gseq = 1;
  }
  
   t++;
   
  if(gseq == 0){
    gamePlay();
  }else{
    gameOver();
  }
}
 void gamePlay(){
   gseq = 0;
  y = y + ( yspeed * ydirection );
   yy = yy + ( yspeed * ydirection );
    yyy = yyy + ( yspeed * ydirection );
  if(y>600){
    y=-10;
    x=random(600);
    
  }
  ellipse(x,y,10,10);
  yy += 5;
  if(yy>600){
    yy=-10;
    xx=random(600);
  }
  ellipse(xx,yy,10,10);
  yyy += 5;
  if(yyy>600){
    yyy=-10;
    xxx=random(600);
  }
  ellipse(xxx,yyy,10,10);
 
   if (y > 500){
    ydirection *= 1.005;
  }
    if (yy > 500){
    ydirection *= 1.005;
  }
  if (yyy > 500){
    ydirection *= 1.005;
  } 

  playerMove();
  
  if ( (py-25<y) && (py+ph+25>y)
&& (px<x) && (px+pw>x) )  {
  count = count + 1;
  text(count,300,300);
}
 if ( (py-25<yy) && (py+ph+25>yy)
&& (px<xx) && (px+pw>xx) )  {
  count = count + 1;
  text(count,300,300);
}
 if ( (py-25<yyy) && (py+ph+25>yyy)
&& (px<xxx) && (px+pw>xxx) ) {
  count = count + 1;
  text(count,300,300);
}
 }

void playerMove(){
   rect(px,py,pw,ph);
   px = mouseX;
}   


void gameOver(){
  
  text(count,240,340);
  
}
  
  
