
Game g;
int x = width/2;
int y =750;
int A;
int B;
int C;
int sean = 0;

void setup() {
  g = new Game();
  size (400, 800);
  textSize(50);
  textAlign(CENTER);
}

void draw() {
  if (sean == 0) {
    fill(0);
    background(255);
    text("Press ENTER", width/2, height/2);
    C = 0;
    if (keyCode == ENTER) {
      A = millis();
      sean=1;
    }
  }

  if (sean == 1) {
    fill(255);
    B = millis();
    C += B-A;
    A = B;
    g.update();
  }
  else if (sean == 2) {
    fill(0);
    background(255);
    text("GameOver", width/2, height/2);
    if (keyCode==ENTER) {
      g = new Game();
      sean=0;
    }
  }
  if (sean == 3) {
    fill(0);
    background(255);
    text("GameClear", width/2, height/2);
    fill(0, 255, 0);
    text(nf((C/1000)%60, 3) + ":" + nf((C/10)%100, 2),width/2,height/2-50);
    fill(255);
    if (keyCode==ENTER) {
      g = new Game();
      sean=0;
    }
  }
}
void keyPressed() {
  if (key == CODED)g.input.keyPressedc(keyCode);
  else g.input.keyPressed(key);
}
void keyReleased() {
  if (key == CODED)g.input.keyReleasedc(keyCode);
  else g.input.keyReleased(key);
}

