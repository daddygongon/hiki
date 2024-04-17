float p;
float t;

int r ;
int l;

int ball_r;
int ball1_y,ball2_y,ball3_y;
float speed;
float s;

void setup() {
  size(1000, 500);
  
  t = 0;
  r = 150;
  
  ball_r = 40;
  speed = 0;
  s = 0;
  
  ball1_y=300;
  ball2_y=200;
  ball3_y=300;
  
  
  
  noStroke();
}

void draw() { 
  float x, y, z, w, a, b, c, d;
  background(0,255,255);
  point(251, 251);
  t += 0.1;
  x = r*sin(-t);
  y = r*cos(-t);
  z = r*sin(t);
  w = r*cos(t);
  fill(180, 0, 80);
  for (l=0;l<=133;l+=1) {
    a = l*sin(-t);
    b = l*cos(-t);
    c = l*sin(t);
    d = l*cos(t);
    ellipse(c+250, d+300, 10, 10);
    ellipse(a+260, b+300, 10, 10);
  }
  
  fill(255, 255, 0);
  ellipse(z+250, w+300, 50, 50);
  ellipse(x+260, y+300, 50, 50);
  fill(0);
  textSize(100);
  
  //↓↓ball's moving↓↓//
  
  
  fill(255,0,200);
  s+=0.1;
  speed = 100*sin(s);
  ellipse(650,ball1_y+speed,ball_r,ball_r);
  ellipse(750,ball1_y-speed,ball_r,ball_r);
  ellipse(850,ball1_y+speed,ball_r,ball_r);
  
  
  
  

  fill(0);
  //ellipse();
     
  




}



