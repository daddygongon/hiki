PImage img;
PImage photo;
float x, y;

//t dir_x = 1;

void setup() {
  x = 900;
  y = 0.0;

  img = loadImage("a.jpg");
  size(900, 500);
}


void draw() {


  image(img, 0, 0);

  //house
  beginShape();
  fill(131, 45, 28);
  vertex(250, 0);
  vertex(50, 150);
  vertex(450, 150);
  endShape(CLOSE);
  fill(187, 189, 247);
  beginShape();
  vertex(80, 150);
  vertex(80, 500);
  vertex(420, 500);
  vertex(420, 150);
  endShape(CLOSE);

  int a = 150;
  int b = 250;

  //heart
  noStroke();
  noStroke();
  fill(247, 7, 120);
  arc(b-15, a+30, 32, 30, radians(180), radians(360));
  arc(b+15, a+30, 32, 30, radians(180), radians(360));
  beginShape();
  vertex(b, a+60);
  vertex(b-31, a+30);
  vertex(b+31, a+30);
  endShape(CLOSE);

  //p1
  //head
  //rinnkaku
  stroke(0);
  fill(255, 195, 116);
  ellipse(a, b, 100, 100);
  //eye
  fill(0);
  ellipse(a-20, b-10, 20, 20);
  fill(0);
  ellipse(a+20, b-10, 20, 20);
  //matsuge
  //L
  line(a-20, b-13, a-30, b-25);
  line(a-20, b-13, a-20, b-25);
  line(a-20, b-13, a-10, b-25);
  //R
  line(a+20, b-13, a+30, b-25);
  line(a+20, b-13, a+20, b-25);
  line(a+20, b-13, a+10, b-25);
  //nose
  beginShape();
  fill(255, 195, 116);
  vertex(a, b);
  vertex(a-5, b+10);
  vertex(a+5, b+10);
  endShape(CLOSE);

  //mouse
  fill(245, 64, 67);
  beginShape();
  vertex(a-15, b+26);
  vertex(a-5, b+20);
  vertex(a, b+23);
  vertex(a+5, b+20);
  vertex(a+15, b+26);
  endShape(CLOSE);
  arc(a, b+26, 30, 10, radians(0), radians(180));
  line(a-15, b+26, a+15, b+26);
  //chiku
  noStroke();
  fill(255, 180, 230);
  ellipse(a-25, b+10, 15, 10);
  ellipse(a+25, b+10, 15, 10);
  //hair
  fill(134, 83, 41);
  arc(a, b-40, 102, 60, radians(180), radians(360));
  arc(a+40, b-50, 145, 60, radians(90), radians(180));
  arc(a-40, b-50, 25, 80, radians(0), radians(90));
  rect(a+40, b-40, 11, 110);
  arc(a+40, b+70, 22, 22, radians(0), radians(150));
  rect(a-51, b-40, 11, 110);
  arc(a-40, b+70, 22, 22, radians(30), radians(180));

  stroke(0);
  int c = 350;

  //p2
  //head
  //mimi
  //R
  fill(255, 195, 116);
  arc(c-40, b-10, 30, 30, radians(90), radians(270));
  //L
  fill(255, 195, 116);
  arc(c+40, b-10, 30, 30, radians(270), radians(360));
  arc(c+40, b-10, 30, 30, radians(0), radians(90));
  //rinnkaku
  fill(255, 195, 116);
  ellipse(c, b, 100, 100);
  //eye
  fill(0);
  ellipse(c-20, b-10, 20, 20);
  fill(0);
  ellipse(c+20, b-10, 20, 20);
  //nose
  beginShape();
  fill(255, 195, 116);
  vertex(c, b);
  vertex(c-5, b+10);
  vertex(c+5, b+10);
  endShape(CLOSE);
  //mouse
  fill(245, 64, 67);
  beginShape();
  vertex(c-15, b+26);
  vertex(c-5, b+20);
  vertex(c, b+23);
  vertex(c+5, b+20);
  vertex(c+15, b+26);
  endShape(CLOSE);
  arc(c, b+26, 30, 10, radians(0), radians(180));
  line(c-15, b+26, c+15, b+26);
  //hair
  noStroke();
  beginShape();
  fill(52, 32, 14);
  vertex(c-35, b-40);
  vertex(c-27, b-60);
  vertex(c-25, b-45);
  vertex(c-17, b-65);
  vertex(c-15, b-45);
  vertex(c-8, b-70);
  vertex(c-5, b-45);
  vertex(c, b-70);
  vertex(c+5, b-45);
  vertex(c+8, b-70);
  vertex(c+15, b-45);
  vertex(c+17, b-65);
  vertex(c+25, b-45);
  vertex(c+27, b-60);
  vertex(c+35, b-40);
  endShape(CLOSE);
  fill(52, 32, 14);
  arc(c, b-40, 70, 20, radians(0), radians(180));
  arc(c, b-40, 70, 20, radians(190), radians(350));

  PImage photo4=loadImage("GUUUU.png");
  image(photo4, 400, mouseY, 150, 100);

  x = x -100;
  //PImage photo2=loadImage("uwaki.png");
  // image(photo2, x+500, y+100, 200, 100);
  //PImage photo3=loadImage("suretigai.png");
  // image(photo3, x+300, y+200, 200, 100);
  PImage photo1=loadImage("kenka.png");
  image(photo1, x, y, 200, 100);

  if (x >= width) { 
    x = photo1.width;
  }
  println(x);

  if (mousePressed ==true)
  {
    x=width;
    y=random(height);
  }

  PImage photo2=loadImage("rikon.png");

  if (x<=200) {
    image(photo2, -200, -100);
  }
}