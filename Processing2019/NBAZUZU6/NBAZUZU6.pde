int radius =20;
float x = radius;
float xx = radius-200;
float xxx= radius-400;
float xxxx = radius-600;
float xxxxx = radius-800;
float speed  = 3;
float y = 320;
float yy = 120;
float yyy = 520;
float yyyy = 220;
float yyyyy = 420;
int count =0;
int ryo ;


void setup() {
  size(1000, 600);
  textSize(100);
  textAlign(CENTER);
  count = 0;
}


void draw() {

  if (ryo == 1) {
    gameOver();
  } else {
    gamePlay();
  }
}

void gamePlay() {

  color c1 =color(#210650);
  color c2 =color(#A475F7);
  for (float g1 = 0; g1<width; g1 +=5) {
    for (float g2 = 0; g2<height; g2 +=5) {
      color c3 =lerpColor(c1, c2, (g1+g2)/(width + height));
      fill(c3);
      rect(g1, g2, 5, 5);
    }
  }


  fill(#2F2434);
  rect(560, 450, 20, 150);
  rect(700, 480, 300, 120);
  fill(255);
  rect(780, 420, 220, 60);
  fill(#2F2434);
  rect(760, 400, 240, 20);
  fill(255);
  rect(890, 300, 120, 100);
  fill(#2F2434);
  rect(870, 280, 130, 20);
  fill(#2F2434);
  rect(910, 170, 90, 20);
  fill(#2F2434);
  rect(980, 90, 20, 20);
  noStroke();
  fill(#6F4003);
  quad(808, 204, 808, 202, 820, 200, 820, 206);
  strokeWeight(4);
  strokeCap(SQUARE);
  fill(#46F0E0);
  arc(width, 170, 150, 120, PI, TWO_PI);
  stroke(#F0D907);
  strokeWeight(2);
  line(765, 203, 808, 203);
  line(810, 201, 810, 205);
  noStroke();
  fill(#9D92A2);
  quad(555, 450, 545, 440, 595, 440, 585, 450);
  quad(555, 590, 545, 600, 595, 600, 585, 590);
  fill(#540476);
  beginShape();
  vertex(780, 180);
  vertex(780, 178);
  vertex(787, 178);
  vertex(787, 172);
  vertex(802, 170);
  vertex(795, 172);
  vertex(795, 178);
  vertex(802, 178);
  vertex(802, 180);
  endShape(CLOSE);
  rect(786, 185, 10, 2);
  rect(785, 187, 12, 16);
  rect(787, 203, 12, 6);
  triangle(785, 187, 772, 185, 785, 195);
  stroke(#955B0E);
  strokeWeight(1);
  line(765, 180, 774, 187);
  noStroke();
  fill(#EACB2B);
  rect(787, 180, 8, 5);
  stroke(#EAEAC9);
  strokeWeight(4);
  line(810, 280, 810, 400);
  fill(#EACB2B);
  rect(805, 270, 10, 10);
  for (int d =920; d <=1000; d+=40) {
    rect(d, 320, 40, 40);
  }
  for (int e =800; e<=1000; e+=40) {
    rect(e, 440, 30, 30);
  }
  stroke(0);
  strokeWeight(2);
  for (int a =925; a <=1000; a += 25) {
    line(a, 190, a, 280);
  }
  for (int b = 570; b<=1000; b +=10) {
    line(b, 570, b, height);
  }
  for (int c =800; c <=1000; c +=10) {
    line(c, 380, c, 400);
  }
  stroke(#2B762E);
  strokeWeight(2);
  for (int kusa = 0; kusa<=1000; kusa += 5) {
    line(kusa, 590, kusa, height);
  }

  noStroke();
  fill(#F0EAB5, 80);
  fill(#76FFF2);
  ellipse(482, mouseY, radius-15, radius+40);
  fill(#76FFF2);

  if (mousePressed) {
    stroke(#6893D6);
    strokeWeight(4);
    fill(#FFFEDB);
    beginShape();
    vertex(350, 600);
    vertex(450, 580);
    vertex(345, 590);
    vertex(430, 500);
    vertex(342, 570);
    vertex(405, 400);
    vertex(335, 250);
    vertex(380, 150);
    vertex(355, 70);
    vertex(365, 0);
    vertex(315, 70);
    vertex(310, 150);
    vertex(225, 250);
    vertex(255, 400);
    vertex(158, 570);
    vertex(70, 500);
    vertex(155, 590);
    vertex(50, 580);
    vertex(150, 600);
    endShape();
  }

  noStroke();

  x += speed;
  if (x>450+radius && mouseY > y-radius-10 && mouseY <y+radius+10 ) {
    x=-radius-500;
    count = count + 1;
    speed += 0.3;
    y+=50;
    if (y>600) {
      y=20;
    }
  }


  fill(#F03838);
  ellipse(x, y, radius+10, radius-15);
  fill(#F0D507);
  ellipse(x, y, radius-1, radius-16);

  xx += speed;
  if (xx>450+radius && mouseY > yy-radius-10 && mouseY <yy+radius+10 ) {
    xx=-radius-500;
    count = count + 1;
    speed += 0.2;
    yy+=100;
    if (yy>600) {
      yy=20;
    }
  }

  fill(#F03838);
  ellipse(xx, yy, radius+10, radius-15);
  fill(#F0D507);
  ellipse(xx, yy, radius-1, radius-16);

  xxx += speed;
  if (xxx>450+radius && mouseY > yyy-radius-10 && mouseY <yyy+radius+10 ) {
    xxx=-radius-500;
    count = count + 1;
    speed += 0.2;
    yyy+=100;
    if (yyy>600) {
      yyy=20;
    }
  }

  fill(#F03838);
  ellipse(xxx, yyy, radius+10, radius-15);
  fill(#F0D507);
  ellipse(xxx, yyy, radius-1, radius-16);

  xxxx += speed;
  if (xxxx>450+radius && mouseY > yyyy-radius-10 && mouseY <yyyy+radius+10 ) {
    xxxx=-radius-500;
    count = count + 1;
    speed += 0.1;
    yyyy+=100;
    if (yyyy>600) {
      yyyy=20;
    }
  }

  fill(#F03838);
  ellipse(xxxx, yyyy, radius+10, radius-15);
  fill(#F0D507);
  ellipse(xxxx, yyyy, radius-1, radius-16);

  xxxxx += speed;
  if (xxxxx>450+radius && mouseY > yyyyy-radius-10 && mouseY <yyyyy+radius+10 ) {
    xxxxx=-radius-500;
    count = count + 1;
    speed += 0.3;
    yyyyy+=100;
    if (yyyyy>600) {
      yyyyy=20;
    }
  }

  fill(#F03838);
  ellipse(xxxxx, yyyyy, radius+10, radius-15);
  fill(#F0D507);
  ellipse(xxxxx, yyyyy, radius-1, radius-16);



  if (x>500+radius ) {
    ryo=1;
  }
  if (xx>500+radius ) {
    ryo=1;
  }
  if (xxx>500+radius ) {
    ryo=1;
  }
  if (xxxx>500+radius ) {
    ryo=1;
  }
  if (xxxxx>500+radius ) {
    ryo=1;
  }
}
void gameOver() {
  fill(0);
  rect(0, 0, 1000, 600);
  fill(#76FFF2);
  text("GAME OVER", 500, 300);
  text(count, 500, 400);
}
