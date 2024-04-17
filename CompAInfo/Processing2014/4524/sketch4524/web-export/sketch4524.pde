float x=250;
float y=150;
float easing=0.02;

void setup() {
  size(1500,1100);
}

void draw() {
  float targetX=mouseX;
  float targetY=mouseY;
  background(204);
  x+=(targetX-x)*easing;
  y+=(targetY-y)*easing;

  strokeWeight(2);
  rect(x, y, 50, 50);
  rect(x+130, y, 50, 50);
  rect(x+35, y+35, 110, 100);
  rect(x+120, y+90, 62, 40);
  
  strokeWeight(6);
  point(x+80,y+70);
  point(x+120,y+70);
  
  strokeWeight(20);
  point(x+182,y+90);



float a=700;
float b=500;

  a+=(targetX-a)*easing;
  b+=(targetY-b)*easing;

  strokeWeight(2);
  rect(a, b, 50, 50);
  rect(a+130, b, 50, 50);
  rect(a+35, b+35, 110, 100);
  rect(a+120, b+90, 62, 40);
  
  strokeWeight(6);
  point(a+80,b+70);
  point(a+120,b+70);
  
  strokeWeight(20);
  point(a+182,b+90);
}




