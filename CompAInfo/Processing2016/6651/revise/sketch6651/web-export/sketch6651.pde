// sketch_160608a_PK.pde
// Source code is available under the Creative Commons Attribution-ShareAlike License
// cc by Taisei. Okakita, 2016 

int x=500, y=700, speedy=0;
float speedx=0;

void setup() {
  size(1000, 1000);
} 
void draw() {
  background(0, 255, 0);
  noFill();
  stroke(255);//goal
  strokeWeight(20);
  strokeJoin(MITER);
  rect(250, 100, 500, 200);
  line(0, 300, 1000, 300);
  line(150, 300, 100, 600);
  line(100, 600, 900, 600);
  line(900, 600, 850, 300);
  strokeWeight(5);
  for (int i=300; i<=700; i+=50) {
    line(i, 100, i, 300);
  }
  for (int j=150; j<=250; j+=50) {
    line(250, j, 750, j );
  }



  fill(255, 50, 50);//ball
  noStroke();
  x+=speedx;
  y-=speedy;
  ellipse(x, y, 60, 60);
  if (y==140) {
    if (x>=250&&x<=750) {
      fill(0);
      textAlign(CENTER);
      textSize(200);
      text("GOAL!!", 500, 500);
      textSize(80);
      text("Please push some key", 500, 700);
    } else {
      fill(0);
      textSize(170);
      textAlign(CENTER);
      text("DON'T MIND\n^_^", 500, 500);
      textSize(80);
      text("Please push some key", 500, 600);
    }
    noLoop();
  }

  fill(0);//kicker
  stroke(0);
  //for (mouseY>700)
  ellipse(mouseX, mouseY-30, 50, 50); 
  ellipse(mouseX, mouseY+15, 40, 60);
  strokeWeight(10);
  line(mouseX, mouseY-10, mouseX-30, mouseY+30);
  line(mouseX, mouseY-10, mouseX+30, mouseY+30);
  line(mouseX-5, mouseY+20, mouseX-15, mouseY+70);
  line(mouseX+5, mouseY+20, mouseX+15, mouseY+70);
}

void keyPressed() {
  loop();
  x=500;
  y=700;
  speedy=0;
  speedx=0;
}

void mousePressed() {
  if (mouseX>=470&&mouseX<=530&&mouseY>=670&&mouseY<=730) {
    speedy = 8;
    speedx = random(-5, 5);
  }
}
