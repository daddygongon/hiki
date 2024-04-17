void setup() {
  size(320, 320);
  rectMode(RADIUS);
  frameRate(15);
}
void draw() {
  fill(255,10);  
float Q = random(20,50);
float A = random(30,290);
float B = random(30,290);

    stroke(random(0,255),random(0,255),random(0,255),90);
    fill(random(0,255),random(0,255),random(0,255),100);
    rect(A,B,Q,Q);
}
