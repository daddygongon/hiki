float bx = mouseX;
float by = mouseY;
float cx = -500;
float cy = -500;
float dx = -500;
float dy = -500;
float ex = -500;
float ey = -500;
float fx = -500;
float fy = -500;
float gx = -1000;
float gy = 300;
float hx =-1500;
float hy =-500;
float ix =-500;
float iy =-500;
float add=1;
/////////////////////////////////////////////////////////////////////////////////////
void setup(){
background(0);
smooth();
strokeWeight(1);
rectMode(CENTER);
size(1000,1000);
noLoop();
noStroke();
//frameRate(120);
}
/////////////////////////////////////////////////////////////////////////////////////
void draw(){
 add=add+.1;
 background(0);   
  fireflower(bx,by);
  fireflowerRandomB(cx,cy);
  fireflowerSun(dx,dy);
  fireflowerBlue(ex,ey);
  fireflowerRed(fx,fy);
  fireflowerCyan(gx,gy);
  fireflowerGreen(hx,hy);
  fireflowerRandomR(ix,iy);
 //back 
  for (int angle = 0; angle <= 360; angle=angle+10){
float x = random(0,1000) + (sin(radians(angle)) * 8*add);
float y = random(0,1000) + (cos(radians(angle)) * 8*add);
fill(0,255,255);
ellipse(x,y,5,5);
}
  if(255-5*add<0){
  add=0;
  cx = random(1000);
  cy = random(1000);
  dx = random(1000);
  dy += 300 ;
  if (dy>1000){
    dy = -500;
  }
  ex += 1000;
  ey = random(1000);
  if(ex>1500){
    ex =-500;
  }
  fx += random(1000);
  fy += random(1000);
  if(fx>1200){
    fx=-500;
  }
  if(fy>1200){
   fy=-500; 
}
  gx+=300;
if(gx>1000){
  gx=-1000;  
} 
hx +=1000;
hy = random(1000);
if(hx>1000){
  hx=-500;
}
ix += 500;
iy += random(1000);
if(ix>1000){
  ix =0;
}
if(key == 'a'){
  bx = random(1000);
  by = random(1000);
}
}
if(key == 's'){  
 bx = -5000;
 by = -5000; 
}

}
//////////////////////////////////////////////////////////////////////////////////////
void fireflower( float a,  float b){
//purple
for (int angle = 0; angle <= 360; angle=angle+60){
float x = a + (sin(radians(angle)) * 0.5*add);
float y = b + (cos(radians(angle)) * 0.5*add);
fill(200-10*add,100-5*add,255-10*add);
ellipse(x,y,5,5);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a + (sin(radians(angle)) * 1*add);
float y = b + (cos(radians(angle)) * 1*add);
fill(0,0,255-5*add);
ellipse(x,y,5,5);
}
//magenta
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a + (sin(radians(angle)) * 1.5*add);
float y = b + (cos(radians(angle)) * 1.5*add);
fill(255-5*add,0,255-5*add);
ellipse(x,y,5,5);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+25){
float x = a + (sin(radians(angle)) * 2*add);
float y = b + (cos(radians(angle)) * 2*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,5,5);
}
//green
for (int angle = 0; angle <= 360; angle=angle+20){
float x = a + (sin(radians(angle)) * 2.5*add);
float y = b + (cos(radians(angle)) * 2.5*add);
fill(0,255-5*add,0);
ellipse(x,y,5,5);
}
//yellow
for (int angle = 0; angle <= 360; angle=angle+15){
float x = a + (sin(radians(angle)) * 3*add);
float y = b + (cos(radians(angle)) * 3*add);
fill(255-5*add,255-5*add,0);
ellipse(x,y,5,5);
}
//orange
for (int angle = 0; angle <= 360; angle=angle+10){
float x = a + (sin(radians(angle)) * 4*add);
float y = b + (cos(radians(angle)) * 4*add);
fill(255-5*add,170-5*add,0);
ellipse(x,y,8,8);
}
//red
for (int angle = 0; angle <= 360; angle=angle+8){
float x = a + (sin(radians(angle)) * 5*add);
float y = b + (cos(radians(angle)) * 5*add);
fill(255-5*add,0,0);
ellipse(x,y,10,10);
}
}

///////////////////////////////////////////////////////////////////////////////////////
void fireflowerRandomB( float a2,  float b2){
//purple
for (int angle = 0; angle <= 360; angle=angle+60){
float x = a2 + (sin(radians(angle)) * 0.5*add);
float y = b2 + (cos(radians(angle)) * 0.5*add);
fill(random(200)-5*add,100-5*add,255-5*add);
ellipse(x,y,5,5);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a2 + (sin(radians(angle)) * 1*add);
float y = b2 + (cos(radians(angle)) * 1*add);
fill(0,random(50)-5*add,255-5*add);
ellipse(x,y,5,5);
}
//magenta
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a2 + (sin(radians(angle)) * 1.5*add);
float y = b2 + (cos(radians(angle)) * 1.5*add);
fill(random(255)-5*add,0,random(255)-5*add);
ellipse(x,y,5,5);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+25){
float x = a2 + (sin(radians(angle)) * 2*add);
float y = b2 + (cos(radians(angle)) * 2*add);
fill(0,random(255)-5*add,random(255)-5*add);
ellipse(x,y,5,5);
}
//green
for (int angle = 0; angle <= 360; angle=angle+20){
float x = a2 + (sin(radians(angle)) * 2.5*add);
float y = b2 + (cos(radians(angle)) * 2.5*add);
fill(0,random(255)-5*add,0);
ellipse(x,y,5,5);
}
} 
//////////////////////////////////////////////////////////////////////////////////////
void fireflowerSun( float a3,  float b3){
//red
for (int angle = 0; angle <= 360; angle=angle+1){
float x = a3 + (sin(radians(angle)) * 0.5*add);
float y = b3 + (cos(radians(angle)) * 0.5*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//yellow
for (int angle = 0; angle <= 360; angle=angle+5){
float x = a3 + (sin(radians(angle)) * 0.6*add);
float y = b3 + (cos(radians(angle)) * 0.6*add);
fill(255-5*add,255-5*add,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+8){
float x = a3 + (sin(radians(angle)) * 0.7*add);
float y = b3 + (cos(radians(angle)) * 0.7*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//yellow
for (int angle = 0; angle <= 360; angle=angle+10){
float x = a3 + (sin(radians(angle)) * 0.8*add);
float y = b3 + (cos(radians(angle)) * 0.8*add);
fill(255-5*add,255-5*add,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+15){
float x = a3 + (sin(radians(angle)) * 0.9*add);
float y = b3 + (cos(radians(angle)) * 0.9*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//yellow
for (int angle = 0; angle <= 360; angle=angle+15){
float x = a3 + (sin(radians(angle)) * 1*add);
float y = b3 + (cos(radians(angle)) * 1*add);
fill(255-5*add,255-5*add,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+5){
float x = a3 + (sin(radians(angle)) * 1*add);
float y = b3 + (cos(radians(angle)) * 1*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//orange
for (int angle = 0; angle <= 360; angle=angle+10){
float x = a3 + (sin(radians(angle)) * 1.5*add);
float y = b3 + (cos(radians(angle)) * 1.5*add);
fill(255-5*add,170-5*add,0);
ellipse(x,y,5,5);
} 
}
///////////////////////////////////////////////////////////////////////////////////////
void fireflowerBlue( float a4,  float b4){
//blue
for (int angle = 0; angle <= 360; angle=angle+60){
float x = a4 + (sin(radians(angle)) * 0.5*add);
float y = b4 + (cos(radians(angle)) * 0.5*add);
fill(200-5*add,100-5*add,255-5*add);
fill(0,0,255-5*add);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a4 + (sin(radians(angle)) * 1*add);
float y = b4 + (cos(radians(angle)) * 1*add);
fill(0,0,255-5*add);
ellipse(x,y,5,5);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a4 + (sin(radians(angle)) * 1.5*add);
float y = b4 + (cos(radians(angle)) * 1.5*add);
fill(0,0,255-5*add);
ellipse(x,y,5,5);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+25){
float x = a4 + (sin(radians(angle)) * 2*add);
float y = b4 + (cos(radians(angle)) * 2*add);
fill(0,0,255-5*add);
ellipse(x,y,5,5);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+20){
float x = a4 + (sin(radians(angle)) * 2.5*add);
float y = b4 + (cos(radians(angle)) * 2.5*add);
fill(0,0,255-5*add);
ellipse(x,y,5,5);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+15){
float x = a4 + (sin(radians(angle)) * 3*add);
float y = b4 + (cos(radians(angle)) * 3*add);
fill(0,0,255-5*add);
ellipse(x,y,5,5);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+10){
float x = a4 + (sin(radians(angle)) * 4*add);
float y = b4 + (cos(radians(angle)) * 4*add);
fill(0,0,255-5*add);
ellipse(x,y,8,8);
}
//blue
for (int angle = 0; angle <= 360; angle=angle+8){
float x = a4 + (sin(radians(angle)) * 5*add);
float y = b4 + (cos(radians(angle)) * 5*add);
fill(0,0,255-5*add);
ellipse(x,y,10,10);
}
}
//////////////////////////////////////////////////////////////////////////////////////
void fireflowerRed( float a5,  float b5){
//red
for (int angle = 0; angle <= 360; angle=angle+60){
float x = a5 + (sin(radians(angle)) * 0.5*add);
float y = b5 + (cos(radians(angle)) * 0.5*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a5 + (sin(radians(angle)) * 1*add);
float y = b5 + (cos(radians(angle)) * 1*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a5 + (sin(radians(angle)) * 1.5*add);
float y = b5 + (cos(radians(angle)) * 1.5*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+25){
float x = a5 + (sin(radians(angle)) * 2*add);
float y = b5 + (cos(radians(angle)) * 2*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+20){
float x = a5 + (sin(radians(angle)) * 2.5*add);
float y = b5 + (cos(radians(angle)) * 2.5*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+15){
float x = a5 + (sin(radians(angle)) * 3*add);
float y = b5 + (cos(radians(angle)) * 3*add);
fill(255-5*add,0,0);
ellipse(x,y,5,5);
}
//red
for (int angle = 0; angle <= 360; angle=angle+10){
float x = a5 + (sin(radians(angle)) * 4*add);
float y = b5 + (cos(radians(angle)) * 4*add);
fill(255-5*add,0,0);
ellipse(x,y,8,8);
}
//red
for (int angle = 0; angle <= 360; angle=angle+8){
float x = a5 + (sin(radians(angle)) * 5*add);
float y = b5 + (cos(radians(angle)) * 5*add);
fill(255-5*add,0,0);
ellipse(x,y,10,10);
} 
}
//////////////////////////////////////////////////////////////////////////////////////
void fireflowerCyan( float a6,  float b6){
//cyan
for (int angle = 0; angle <= 360; angle=angle+60){
float x = a6 + (sin(radians(angle)) * 0.5*add);
float y = b6 + (cos(radians(angle)) * 0.5*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,5,5);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a6 + (sin(radians(angle)) * 1*add);
float y = b6 + (cos(radians(angle)) * 1*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,5,5);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a6 + (sin(radians(angle)) * 1.5*add);
float y = b6 + (cos(radians(angle)) * 1.5*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,5,5);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+25){
float x = a6 + (sin(radians(angle)) * 2*add);
float y = b6 + (cos(radians(angle)) * 2*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,2,5);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+20){
float x = a6 + (sin(radians(angle)) * 2.5*add);
float y = b6 + (cos(radians(angle)) * 2.5*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,5,3);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+15){
float x = a6 + (sin(radians(angle)) * 3*add);
float y = b6 + (cos(radians(angle)) * 3*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,10,5);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a6 + (sin(radians(angle)) * 4*add);
float y = b6 + (cos(radians(angle)) * 4*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,8,15);
}
//cyan
for (int angle = 0; angle <= 360; angle=angle+45){
float x = a6 + (sin(radians(angle)) * 5*add);
float y = b6 + (cos(radians(angle)) * 5*add);
fill(0,255-5*add,255-5*add);
ellipse(x,y,20,10);
}
}
//////////////////////////////////////////////////////////////////////////////////////
void fireflowerGreen( float a7,  float b7){
//Green
for (int angle = 0; angle <= 360; angle=angle+60){
float x = a7 + (sin(radians(angle)) * 0.5*add);
float y = b7 + (cos(radians(angle)) * 0.5*add);
fill(0,255-5*add,0);
rect(x,y,1,1);
}
//Green
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a7 + (sin(radians(angle)) * 1*add);
float y = b7 + (cos(radians(angle)) * 1*add);
fill(0,255-5*add,0);
rect(x,y,2,2);
}
//Green
for (int angle = 0; angle <= 360; angle=angle+25){
float x = a7 + (sin(radians(angle)) * 2*add);
float y = b7 + (cos(radians(angle)) * 2*add);
fill(0,255-5*add,0);
rect(x,y,2,2);
}
//Green
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a7 + (sin(radians(angle)) * 3*add);
float y = b7 + (cos(radians(angle)) * 3*add);
fill(0,255-5*add,0);
rect(x,y,3,3);
}
//Green
for (int angle = 0; angle <= 360; angle=angle+60){
float x = a7 + (sin(radians(angle)) * 4*add);
float y = b7 + (cos(radians(angle)) * 4*add);
fill(0,255-5*add,0);
rect(x,y,3,3);
}
}
//////////////////////////////////////////////////////////////////////////////////////
void fireflowerRandomR( float a8,  float b8){
//
for (int angle = 0; angle <= 360; angle=angle+60){
float x = a8 + (sin(radians(angle)) * 0.5*add);
float y = b8 + (cos(radians(angle)) * 0.5*add);
fill(255-10*add,0,random(255)-10*add);
ellipse(x,y,5,5);
}
//
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a8 + (sin(radians(angle)) * 1*add);
float y = b8 + (cos(radians(angle)) * 1*add);
fill(random(255)-5*add,255-5*add,0);
ellipse(x,y,5,5);
}
//
for (int angle = 0; angle <= 360; angle=angle+30){
float x = a8 + (sin(radians(angle)) * 1.5*add);
float y = b8 + (cos(radians(angle)) * 1.5*add);
fill(255-5*add,random(255)-5*add,0);
ellipse(x,y,5,5);
}
//
for (int angle = 0; angle <= 360; angle=angle+25){
float x = a8 + (sin(radians(angle)) * 2*add);
float y = b8 + (cos(radians(angle)) * 2*add);
fill(0,255-5*add,random(255)-5*add);
ellipse(x,y,5,5);
}
//
for (int angle = 0; angle <= 360; angle=angle+20){
float x = a8 + (sin(radians(angle)) * 2.5*add);
float y = b8 + (cos(radians(angle)) * 2.5*add);
fill(255-5*add,random(255)-5*add,0);
ellipse(x,y,5,5);
}
//
for (int angle = 0; angle <= 360; angle=angle+15){
float x = a8 + (sin(radians(angle)) * 3*add);
float y = b8 + (cos(radians(angle)) * 3*add);
fill(random(255-5*add),255-5*add,0);
ellipse(x,y,5,5);
}
//
for (int angle = 0; angle <= 360; angle=angle+10){
float x = a8 + (sin(radians(angle)) * 4*add);
float y = b8 + (cos(radians(angle)) * 4*add);
fill(255-5*add,random(255)-5*add,0);
ellipse(x,y,8,8);
}

}

///////////////////////////////////////////////////////////////////////////////////
void mouseClicked() {
  if(mouseButton == LEFT){
  loop();
  }
  if(mouseButton == RIGHT){
    noLoop();
  }
  bx=mouseX;
  by=mouseY;
  
}


