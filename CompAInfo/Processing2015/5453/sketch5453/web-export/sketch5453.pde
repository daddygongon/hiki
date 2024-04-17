int fps = 24;
 int cycle = 30;
 float posX = 50;
 float posY = 100;
 float radius = 20;
 float maxOpenRad = PI/2;

 float theta;

float xmove=0;
int a=180,b=180,c=180,d=180,e=180,f=180,g=180,h=180,i=180,j=180;

void setup(){
  size(600,200);
}

void draw(){
  background(0);
  
  float startRad = map(sin(theta), -1, 1, 0, maxOpenRad/2);
 float endRad = TWO_PI - startRad;
arc(xmove, posY, radius*2, radius*2, startRad, endRad);
 line(posX, posY, posX+radius*cos(startRad), posY+radius*sin(startRad));
 line(posX, posY, posX+radius*cos(endRad), posY+radius*sin(endRad));

 theta += TWO_PI/cycle;
  
  fill(a);
  ellipse(100,100,10,10);
  fill(b);
  ellipse(150,100,10,10);
  fill(c);
  ellipse(200,100,10,10);
  fill(d);
  ellipse(250,100,10,10);
  fill(e);
  ellipse(300,100,10,10);
  fill(f);
  ellipse(350,100,10,10);
  fill(g);
  ellipse(400,100,10,10);
  fill(h);
  ellipse(450,100,10,10);
  fill(i);
  ellipse(500,100,10,10);
  fill(j);
  ellipse(550,100,10,10);
  fill(255,220,40);
  noStroke();
  smooth();
  arc(xmove,100,40,40,PI/5,TWO_PI-PI/5);
  xmove=xmove+1;
  
  if(xmove>98){
    a=0;
  }
  if(xmove>139){
    b=0;
  }
  if(xmove>190){
    c=0;
  }
  if(xmove>249){
    d=0;
  }
  if(xmove>298){
    e=0;
  }
  if(xmove>345){
    f=0;
  }
  if(xmove>400){
    g=0;
  }
  if(xmove>450){
    h=0;
  }
  if(xmove>500){
    i=0;
  }
  if(xmove>545){
    j=0;
  }
}

