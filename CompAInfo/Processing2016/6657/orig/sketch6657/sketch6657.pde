//Hungry Catapillar

void setup() {
  size(1500, 800);
  background(255);
  frameRate(20);
}


void draw() {
  float A=random(50, 200);
  fill(random(50), 100+random(70), 50+random(100));
  noStroke();
  smooth();
  ellipse(mouseX, mouseY, A, A);
}

void mousePressed() {
  if (mouseButton==LEFT) {
    float X=mouseX;
    float Y=mouseY;

    fill(200, 100, 100);
    noStroke();
    smooth();
    ellipse(X, Y, 250, 250);

    //eye  
    fill(200, 200, 0);
    noStroke();
    smooth();
    ellipse(X+50, Y-30, 40, 70);

    fill(200, 200, 0);
    noStroke();
    smooth();
    ellipse(X-50, Y-30, 40, 70);

    fill(#207E06);
    noStroke();
    smooth();
    ellipse(X+50, Y-30, 30, 60);

    fill(#207E06);
    noStroke();
    smooth();
    ellipse(X-50, Y-30, 30, 60);

    //antenna
    fill(#891DAA);
    noStroke();
    smooth();
    ellipse(X+40, Y-140, 20, 100);

    fill(#891DAA);
    noStroke();
    smooth();
    ellipse(X-40, Y-140, 20, 100);

    //mouth
    fill(#816928);
    noStroke();
    smooth();
    triangle(X, Y+30, X+20, Y+80, X-20, Y+80);

    noLoop();

    if (X>750) { 
      textSize(70);
      textAlign(LEFT);
      fill(#F01111);
      text("Nice Catapillar", 100, 100);
    } else if (X<750) {
      textSize(70);
      textAlign(RIGHT);
      fill(#F01111);
      text("Nice Catapillar", 1400, 100);
    }
  } else if (mouseButton==RIGHT) {

    background(255);
  }
}