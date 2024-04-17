int numBalls = 12;
float spring = 0.01;
//float gravity = 0.03;
float friction = -0.9;
Ball[] balls = new Ball[numBalls];

void setup() {
   size(500,500);
  for (int i = 0; i < numBalls; i++) {
    balls[i] = new Ball(random(width), random(height), random(30, 70), i, balls);
    noCursor();
  }
  noStroke();
  fill(255, 204);
  }

void draw() {
  background(252,194,239);
  fill(255);
  for (int i = 0; i < numBalls; i++) {
    balls[i].collide();
    balls[i].move();
    balls[i].display();  
  }
  
  if(mousePressed){
    translate(mouseX,mouseY);
  fill(196, 125, 107);
  noStroke();
  rect(200, 250, 130, 150);
  rect(200, 400, 50, 50);
  rect(280, 400, 50, 50);
  ellipse(330, 370, 30, 30);
  quad(200, 250, 160, 280, 180, 320, 200, 310);
  quad(330, 250, 370, 280, 350, 320, 330, 310);
  ellipse(265, 205, 150, 150);
  ellipse(200, 160, 50, 50);
  ellipse(330, 160, 50, 50);
  fill(0, 0, 0);
  ellipse(230, 200, 15, 15);
  ellipse(300, 200, 15, 15);
  fill(255, 0, 0);
  arc(263, 225, 40, 40, 0, PI);
  fill(252, 98, 59);
  arc(200, 160, 35, 35, radians(120), radians(320));
  arc(330, 160, 35, 35, radians(220), radians(420));
  fill(247, 30, 193);
  ellipse(200, 225, 40, 20);
  ellipse(330, 225, 40, 20);
  }else{
    translate(width/8,height/8);
    fill(196, 125, 107);
  noStroke();
  rect(200, 250, 130, 150);
  rect(200, 400, 50, 50);
  rect(280, 400, 50, 50);
  ellipse(330, 370, 30, 30);
  
  if(keyPressed){
    quad(200, 250, 160, 250, 160, 280, 200, 310);
  }else{
  quad(200, 250, 160, 280, 180, 320, 200, 310);
  }
  if(keyPressed){
    quad(330, 250, 370, 250, 370, 280, 330, 310);
  
  }else{
    quad(330, 250, 370, 280, 350, 320, 330, 310);
  }
  ellipse(265, 205, 150, 150);
  ellipse(200, 160, 50, 50);
  ellipse(330, 160, 50, 50);
  fill(0, 0, 0);
  ellipse(230, 200, 15, 15);
  ellipse(300, 200, 15, 15);
  fill(255, 0, 0);
  arc(263, 225, 40, 40, 0, PI);
  fill(252, 98, 59);
  arc(200, 160, 35, 35, radians(120), radians(320));
  arc(330, 160, 35, 35, radians(220), radians(420));
  fill(247, 30, 193);
  ellipse(200, 225, 40, 20);
  ellipse(330, 225, 40, 20);
  }
}

class Ball {
  
  float x, y;
  float diameter;
  float vx = 0;
  float vy = 0;
  int id;
  Ball[] others;
 
  Ball(float xin, float yin, float din, int idin, Ball[] oin) {
    x = xin;
    y = yin;
    diameter = din;
    id = idin;
    others = oin;
  } 
  
  void collide() {
    for (int i = id + 1; i < numBalls; i++) {
      float dx = others[i].x - x;
      float dy = others[i].y - y;
      float distance = sqrt(dx*dx + dy*dy);
      float minDist = others[i].diameter/2 + diameter/2;
      if (distance < minDist) { 
        float angle = atan2(dy, dx);
        float targetX = x + cos(angle) * minDist;
        float targetY = y + sin(angle) * minDist;
        float ax = (targetX - others[i].x) * spring;
        float ay = (targetY - others[i].y) * spring;
        vx -= ax;
        vy -= ay;
        others[i].vx += ax;
        others[i].vy += ay;
      }
    }   
  }
  
  void move() {
   // vy += gravity;
    x += vx;
    y += vy;
    if (x + diameter/2 > width) {
      x = width - diameter/2;
      vx *= friction; 
    }
    else if (x - diameter/2 < 0) {
      x = diameter/2;
      vx *= friction;
    }
    if (y + diameter/2 > height) {
      y = height - diameter/2;
      vy *= friction; 
    } 
    else if (y - diameter/2 < 0) {
      y = diameter/2;
      vy *= friction;
    }
  }
  
  void display() {
    ellipse(x, y, diameter, diameter);
  }
  
 }



