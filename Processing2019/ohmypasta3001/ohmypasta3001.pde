void setup() {
  size(500,500);
  stroke(0);
  frameRate(60);
}
void draw() {
  background(255);
  float S= second();
  float M = minute() + (S/60);
  float H = hour()%12 + (M/60);

  translate(width/2, height/2);
  ellipse(0,0,width,height);
  fill(0);
  stroke(255);

  pushMatrix();
  rotate(radians(S*(360/60)));
  strokeWeight(1);
  line(0,0,0,-height/2);
  popMatrix();

  pushMatrix();
  rotate(radians(M*(360/60)));
  strokeWeight(5);
  line(0,0,0,-height/2);
  popMatrix();

  pushMatrix();
  rotate(radians(H*(360/12)));
  strokeWeight(10);
  line(0,0,0,-height/3);
  popMatrix();
}
