float rad;

float xspeed, yspeed;

float t;

float xdirection;

float ydirection;

KUCHI[] kuchiarray;


void setup(){

  size(800,500);

  smooth();

  noStroke();

  

  kuchiarray=new KUCHI[20];

  for(int i=0; i<kuchiarray.length;i++){

    xspeed=random(0.5,5);

    yspeed=random(0.5,5);

    t=random(0,3);

    rad=random(20,70);

    xdirection=random(-1,1);

    ydirection=random(-1,1);

    

    KUCHI kuchi = new KUCHI(xspeed,yspeed,t,rad,xdirection,ydirection);

    kuchiarray[i]=kuchi;

  }

  

    

}


void draw(){

  background(255);

  for(KUCHI kuchi:kuchiarray){

    kuchi.draw();

  }


}

 


class KUCHI{

  int num=60;

  float mx[] = new float[num];

  float my[] = new float[num];

  float x;

  float y;

  float rad;

  float xpos=width/2;

  float ypos=height/2;

  float theta;

  float xdirection; 

  float ydirection; 

  

  

  KUCHI(float x,float y, float t, float rad, float xdirection,float ydirection){

  this.x = x; 

  this.y = y; 

  this.rad=rad;

  theta=t;

  this.xdirection=xdirection;

  this.ydirection=ydirection;

  }

  

  void draw(){

  xpos = xpos + ( x * xdirection );

  ypos = ypos + ( y * ydirection );

  if (xpos > width-rad || xpos < rad) {

    xdirection *= -1;

  }

  if (ypos > height-rad || ypos < rad) {

    ydirection *= -1;

  }

  

  fill(0,255/100*rad,120,120);

  

  if(xdirection>0){

  arc(xpos, ypos, rad, rad, 0.5*sin(theta), 2*PI-0.5*sin(theta), PIE);

  }

  if(xdirection<0){

  arc(xpos, ypos, rad, rad, PI+0.5*sin(theta), 3*PI-0.5*sin(theta), PIE);

  }

  

  
  

 theta+=0.1;

 fill(255);



}

}


void star(float x, float y, float radius1, float radius2, int npoints) {

  float angle = TWO_PI / npoints;

  float halfAngle = angle/2.0;

  beginShape();

  for (float a = 0; a < TWO_PI; a += angle) {

    float sx = x + cos(a) * radius2;

    float sy = y + sin(a) * radius2;

    

    sx = x + cos(a+halfAngle) * radius1;

    sy = y + sin(a+halfAngle) * radius1;

 

  }

  endShape(CLOSE);

}
