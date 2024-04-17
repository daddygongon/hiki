//Copyright(c) 2016 Naoki Yoshida
//This software is released under the MIT Licence.
//http://opensource.org/licenses/mit-license.php*/

void setup() {
  size(500, 500);
  frameRate(20);
}
void draw() {
  //background(255);
  fadeToWhite();
  stroke(mouseX, 0, mouseY);
  ellipse(width/2, height/2, mouseX, mouseY);
}
void fadeToWhite() {
  noStroke();
  fill(255, 30);
  rectMode(CORNER);
  rect(0, 0, width, height);
}
      