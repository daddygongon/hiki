PImage imgkadai;
final float GRAVITY=9.8*2; //pixel per frame second
ball ball1;
ball ball2;
ball ball3;
ball ball4;
ball ball5;





void setup() {
  size(1000, 500);
  ball1=new ball(width/2, 0);
  ball2=new ball(random(0, width), 0); 
  ball3=new ball(random(0, width), 0); 
  ball4=new ball(random(0, width), 0); 
  ball5=new ball(random(0, width), 0); 
  imgkadai=loadImage("kadai.jpg");
}



void draw() {
  
  background(255);
  ball1.display();
  ball2.display();
  ball3.display();
  ball4.display();
  ball5.display();
  ball1.fall();
  ball2.fall();
  ball3.fall();
  ball4.fall();
  ball5.fall();
  ball1.baunce(height);
  ball2.baunce(height);
  ball3.baunce(height);
  ball4.baunce(height);
  ball5.baunce(height);
  ball1.click();
  ball2.click();
  ball3.click();
  ball4.click();
  ball5.click();
  
 
}

class ball {
  float x; 
  float y;
  float velocity;
  float acceleration;
  float radius;
  ball(float xx, float yy) {
    x=xx;
    y=yy;
    velocity=0;  //pixel per frame
    acceleration=0;
    radius=50;
  }

  void display() {
    noStroke();
    fill(255);
    ellipseMode(CENTER);
    imageMode(CENTER);
    ellipse(x, y, radius, radius);
    image(imgkadai,x,y,50,50);
  }

  void fall() {
    velocity+=GRAVITY/60;
    y+=velocity;
  }

  void baunce(float floor) {
    if (y+radius>floor) {
      velocity*=(-1);
    }
  }

  void click() {
    if (mousePressed==true) {
      if (dist(mouseX, mouseY, x, y)<radius) {
        reset();
      }
    }
  }

  void reset() {
    x=random(width);
    y=0;
    velocity=0;
  }
}
