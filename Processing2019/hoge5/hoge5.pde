int n = 3;
int x = 255;
int y = 255;
int z = 255;
float v = 50.0; //rotation speed
int v_search = 0; 

void setup() {
  PFont font;
  String[] fontList;
  fontList= PFont.list();
  font=createFont(fontList[0], 30);
  textFont(font);
  size(640, 400);
}


void keyPressed() {

  if (key == 'u') {
    n ++;
    x =floor(random(256));
    y =floor(random(256));
    z =floor(random(256));
    background(x, y, z);
    delay(2);
  } else if (key == 'd') {
    n -- ;
    x =floor(random(256));
    y =floor(random(256));
    z =floor(random(256));
    background(x, y, z);
    delay(3);
  } else if (key == 't') {
    n = 3;
  } else if (key == 'f') {
    v = v - 5.0;
  } else if (key == 's') {
    v = v + 5.0;
  } else if (key == 'r') {
    v = 50.0;
  } else if  (key == 'v') { 
    v_search ++;
  }
}


void draw() {
  if (n < 3) {
    n = 3;
  }

  if (v < 5) {
    v = 0.001;
  }



  background(x, y, z);
  fill(0);
  textSize(20);
  if (n > 14) {
    fill(0);
    text("ほぼ円です", 160, 70);
  } 
  if (n == 3 && v < 0.1) {
    text("★星★", 160, 70);
  }

  if (v_search % 2 == 1) {
    text("回転速度；" + str(v), 160, 400);
  }

  text("これは正"+str(n)+"角形です", 160, 50);
  text("uかdを押すと正多角形が変化します", 160, 300);
  text("tを押すと三角形に戻ります", 160, 320);
  text("f；回転速度UP", 160, 340);
  text("s；回転速度DOWN", 160, 360);
  text("r；回転速度RESET", 160, 380);
  fill(255);
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / v);
  polygon(0, 0, 80, n);  // Icosahedron
  popMatrix();
}


void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
