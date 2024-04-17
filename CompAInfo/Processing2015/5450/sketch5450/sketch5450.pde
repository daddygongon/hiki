int radius=10;
float xpos, ypos;
float x2pos, y2pos;
float xspeed=7;
float yspeed=5;
float x2speed=4;
float y2speed=8;
int xdirection=1;
int ydirection=1;
int x2direction=1;
int y2direction=1;
int z;
int z2;
int z3;
void setup() {
  size(640, 360);
  noStroke();
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
  fill(255);
  strokeWeight(2);
  ellipseMode(RADIUS);
  xpos=width/2;
  ypos=width/2;
  x2pos=width/2;
  y2pos=width/2;
}
void draw() {
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  background(0, mouseX, mouseY);
  stroke(mouseX, 0, 0);
  rect(20, mouseY, 8, 80);//racket
  ellipse(xpos, ypos, radius, radius);
  if (xpos > width-radius || xpos < radius) {
    xdirection *= -1;
  }
  if (ypos > height-radius || ypos < radius) {
    ydirection *= -1;
  }
  if (xpos<= 34) { 
    if (ypos >= mouseY && ypos <= mouseY + 80) {
      xdirection *= -1;
    }
  }
  if (keyPressed) {
    z =1;
  }

  if (z==1) {
    x2pos = x2pos + ( x2speed * x2direction );
    y2pos = y2pos + ( y2speed * y2direction );
    ellipse(x2pos, y2pos, radius, radius);
  }

  if (x2pos > width-radius || x2pos < radius) {
    x2direction *= -1;
  }
  if (y2pos > height-radius || y2pos < radius) {
    y2direction *= -1;
  }
  if (x2pos<= 34) { 
    if (y2pos >= mouseY && y2pos <= mouseY + 80) {
      x2direction *= -1;
    }
  } 
  if ((xpos<20)||(x2pos<20)) {
    textSize(30);
    fill(255);
    text("GAME OVER", 240, 180);
    noLoop();
  }
  if (mousePressed) {
    z2=1;
  }
  if (z2==1) {
    loop();
  }
}



