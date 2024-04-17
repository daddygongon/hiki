float radius  = 75;
float x1 = 125;
float y1 = 125;
float x2 = 125;
float y2 = 125;
float speed1 = 10;
float speed2 = 25; 
int direction1 = 1;
int direction2 = 1;
float deg = 0;
float deg2 = 0;

void setup() {
  size(1000, 1000);
  ellipseMode(RADIUS); 
  speed1 = 15;
  speed2 = 30;
}

void draw() {
  background(255);
  fill(0);
  rect(50, 50, 900, 900);
  fill(255);
  rect(200, 200, 600, 600);

  fill(233, 255, 0);
  arc(x1, y1, radius, radius, 0.52+deg, 5.76+deg);
  //if(x1+75  y1+75 &&deg +radians(90));
  if (y1 == 50+radius) {
    x1 += speed1;
    if (x1 > width-50-radius) {
      x1 = width-50-radius;
      //direction1 = -direction1;
    }
  }


  if (y1 == height -50 -radius) {
    x1 -= speed1;
    if (x1<50+radius) {
      x1=50+radius;
    }
  }


  if (x1 == width-50-radius) {
    y1+=speed1;
    if (y1 > height-50-radius) {
      x1 = height-50-radius;
    }
  }

  if (x1 == 50+radius) {
    y1-=speed1;
  }

  if (x1==800&&y1==125) {
    deg = deg + radians(90);
  }
  if (x1==875&&y1==875) {
    deg = deg + radians(90);
  }
  if (x1==125&&y1==125) {
    deg = deg + radians(90);
  }
  if (x1==125&&y1==800) {
    deg = deg + radians(90);
  }



  fill(240, 2, 74);
  arc(x2, y2, radius, radius, 0.52+deg2, 5.76+deg2);
  if (y2 == 50+radius) {
    x2 += speed2;
    if (x2 > width-50-radius) {
      x2 = width-50-radius;
      direction2 = -direction2;
    }
  }
  if (y2 == height -50 -radius) {
    x2 -= speed2;
    if (x2<50+radius) {
      x2=50+radius;
    }
  }
  if (x2 == width-50-radius) {
    y2+=speed2;
    if (y2 > height-50-radius) {
      x2 = height-50-radius;
    }
  }
  if (x2 == 50+radius) {
    y2-=speed2;
  }
  if (x2==875&&y2==155) {
    deg2 = deg2 + radians(90);
  }
  if (x2==875&&y2==875) {
    deg2 = deg2 + radians(90);
  }
  if (x2==125&&y2==125) {
    deg2 = deg2 + radians(90);
  }
  if (x2==125&&y2==845) {
    deg2 = deg2 + radians(90);
  }
}
