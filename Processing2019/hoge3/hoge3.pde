void setup() {
  size(700,700);
  noCursor();
  frameRate(20);

 }

void drawStar(float x, float y, int r, int prickleNum) {  // https://qiita.com/reona396/items/5fa4babc8243c4ed4914 より引用
  int vertexNum = prickleNum*2;
  int R;
  int outR = r;
  int inR = outR/2;

  pushMatrix();
  translate(x, y);
  rotate(radians(-90));
  beginShape();
  for (int i = 0; i < vertexNum; i++) {
    if (i%2 == 0) {
      R = outR;
    } else {
      R = inR;
    }
    vertex(R*cos(radians(360*i/vertexNum)), R*sin(radians(360*i/vertexNum)));
  }
  endShape(CLOSE);
  popMatrix();
}


boolean circleButton(float x, float y, float radius, color pressedColor, color releasedColor, String pressedText, String releasedText, int size){ // https://github.com/void-hoge/button より引用
  ellipseMode(CENTER);
  textAlign(CENTER);
  textSize(size);
  noStroke();
  if (mousePressed&&(dist(mouseX, mouseY, x, y)<radius)){
    fill(pressedColor);
    ellipse(x, y, radius, radius);
    fill(0);
    text(pressedText, x, y);
    return true;
  }else{
    fill(releasedColor);
    ellipse(x, y, radius, radius);
    fill(0);
    text(releasedText, x, y);
    return false;
  }
}




float x = width/2;
float y = height/2;
int tokutenn = 0;

void draw() {
  background( 0, 200, 200);
  int ms = millis()/1000;
  println(ms);

  if (circleButton(x, y, 150, color(255,0,0), color(255,0,0), "", "", 150)==true) {

      tokutenn = tokutenn + 100;
      fill(255,0,0);
      stroke(200, 0, 0);
      drawStar( x, y, 200, 6);


   x = random(0,width);
   y = random(0,height);
  }

  stroke(0);
  fill( 0, 0, 0, 0 );
  ellipse(mouseX , mouseY, 200, 200);
  line(mouseX + 50, mouseY, mouseX + 150, mouseY);
  line(mouseX - 50, mouseY, mouseX - 150, mouseY);
  line(mouseX, mouseY + 50, mouseX, mouseY + 150);
  line(mouseX, mouseY - 50, mouseX, mouseY - 150);

  if (ms==20){
    println(tokutenn);
    noLoop();
  }

}
