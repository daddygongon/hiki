float z;
int l = 50;
int r=10;
float x=r;
float y=r;
float dx=4;
float dy=5;
PImage photo;
PImage sprite;

void setup()
{
  size(500, 600);
  photo=loadImage("lgi01a201402101700.jpg");
  ellipseMode(RADIUS);
  background(0, 0, 0);
  frameRate(50);
  rect(0, 0, width, height);
}

void draw()
{

  if (keyPressed) {
    if (key == 'a') {
      z -=6;
    }
    else if (keyPressed) {
      if (key == 'd') {
        z +=6;
      }
    }
  }

  image(photo, 0, 0);
  sprite=loadImage("soccorball110519.png");
  image(sprite, x, y);

  float q=dist(z, 575, x, y);
  if (q<80) {
    dx=random(15);
    dy=random(-15);
  }

  stroke(0, 0, 0, 10);
  fill(0);
  ellipse(z, 575, 25, 25);
  z=constrain(z, 29, 471);


  x=x+dx;
  y=y+dy;

  if (y>height-r*5||y<r) dy=-dy;
  if (x>width-r*5||x<r) dx=-dx;

  if (y>550) {
    textAlign(CENTER);
    textSize(35);
    text("GAME OVER", width/2, height/2);
    noLoop();
  }
}

