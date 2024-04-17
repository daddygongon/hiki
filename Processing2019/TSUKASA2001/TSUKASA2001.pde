int kosuu;
int zentai;
float pi;
float x;
float y;
float radius = 1000;

void setup() {
  frameRate(500);
  size(1000, 1200);
  ellipseMode(RADIUS);
  ellipse(0, 0, radius, radius);
  rect(0, 1000, 1000, 200);
}

void draw() {
  x = random(1);
  y = random(1);
  fill(0);
  stroke(0);
  strokeWeight(2.5);
  point(x*1000, y*1000);

  if ((x*x+y*y) < 1) {
    kosuu += 1;
  }
  fill(255);
  noStroke();
  rect(0, radius, radius, 200);
  fill(0);
  textSize(25);
  text("points in the quarter circle:" +kosuu, 0, 1100);

  zentai = frameCount;
  text("whole points:" +zentai, 0, 1150);

  pi =(float)4*kosuu / zentai; // (1000*1000*pi)/4 = 1000*1000*(kosuu/zentai) //
  text("pi:"+pi, 600, 1100);
}
