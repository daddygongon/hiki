float x, y;
float velocityX = 30.0;
float velocityY = 0.0;
float gravity = 0.2;
float baunce = 0.25;
float hit = 0.5;
int point;
int count;


void setup() {
  size(700, 800);
  background(0);
  noStroke();
  fill(0);
  x=y=0.0;
  point=0;
  count=0;
  fill(255);
  velocityX=1.0;
  velocityY=5.0;
  rectMode(CENTER);
} 

void draw() {
  fade(false);
  fill(255);
  text(point, 50, 20);
  ellipse(x, y, 50, 50);
  rect(mouseX, height-50, 100, 20);
  velocityY += gravity;
  x+= velocityX;
  y+= velocityY;

  if (x>width || x<0) velocityX = -velocityX;

  if (y>height-25) {
    velocityY*=-baunce;
    velocityX*=hit;
    y=height-25;
    count++;
    point++;
  }

  if ((x>(mouseX-50))&&(x<(mouseX+50))&&(y>height-75)) {
    y=height-75;
    velocityY*=(-1.1);
  }
  if (y<=0) {
    velocityY=-velocityY;
  }

  if (count>=25) {
    background(#FC081C);
    textAlign(CENTER);
    textSize(58);
    text("GAME OVER", width/2, height/2);
  }
}

void fade (boolean _fadeFlag) {
  if ( _fadeFlag) {
    fill(255, 10);
    rect(0, 0, width, height);
    fill(255);
  } else {
    background(0);
  }
}
