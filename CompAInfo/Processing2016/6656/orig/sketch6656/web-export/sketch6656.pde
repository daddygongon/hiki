float x =200;
float y =390;
void setup() {
  size(400, 400);
  background(255);
  fill(255, 130, 0);
  ellipse(x, y, r, r);
  fill(122);
  rect(100, 100, 100, 100);
  fill(255, 130, 0);
  rect(190, 70, 20, 20);
}
float vx=0.0;
float vy=0.0; //velocity 
int r=10;  
boolean pressed = false;
void draw() {
  //  if (mousePressed=true) {
  background(255);
  fill(122, 50);
  rect(100, 30, 200, 100);
  fill(255, 130, 0);
  rect(190, 70, 20, 20);
  ellipse(x, y, r, r); 
  if (mousePressed==true) {
    pressed = false;
    vx=random(-1.5, 1.5);
    vy=random(-1.5, 1.5);
    translate(x=mouseX, y=mouseY);
  }
  if (x<5) {
    vx=-vx;
  }
  if (x>395) {
    vx=-vx;
  }
  if (y<5) {
    vy=-vy;
  }
  if (y>395) {
    vy=-vy;
  }
  if (100<=mouseX&&mouseX<=300) {
    if (30<=mouseY&&mouseY<=130) {
      pressed=false;
      background(0);
      fill(255);
      textSize(100) ;
      text("out!", 105, 220);
      vx=0;
      vy=0;
      if (mousePressed) {
        pressed=false;
        background(0);
        fill(255);
        textSize(100) ;
        text("out!", 105, 220);
      }
      if (190<x&&x<210) {
        if (70<y&&y<90) {
          vx=0;
          vy=0;
          background(0);
          fill(255);
          textSize(100); 
          text("great!", 70, 220);
        }
      }
    }
  }

  if (190<x&&x<210) {
    if (70<y&&y<90) {
      vx=0;
      vy=0;
      background(0);
      fill(255);
      textSize(100); 
      text("great!", 70, 220);
    }
  }



  x+=vx; 
  y+=vy;
  fill(255, 130, 0);
  //  }
}
//void mousePressed() {
//  pressed = true;
//}
