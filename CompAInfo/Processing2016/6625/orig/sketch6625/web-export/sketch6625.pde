int d = 10;

void setup() {
  size(400, 400);
}
void draw() {
  background(255, 255, 0);
  d = d + 1;
  ellipse(width/2, height/2, d, d);
  fill(0, 122, 199);
  if (d >= width) { 
    d = 10;
  }
}

