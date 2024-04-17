//MIT License by Michika Onishi,2016


float x, y, xSpeed, ySpeed;
PFont font;
void setup()
{
    size(800, 500);
    frameRate(80);
    noStroke();
    x=50;
    y=50;
    xSpeed=random(10);
    ySpeed=random(10);
    mouseX=400;
    mouseY=400;
}
void draw()
{
    background(67, 135, 233);
    fill(244, 250, 37);
    ellipse(x, y, 40, 40);
    x += xSpeed;
    y += ySpeed;
    if (x>width||x<0) {
        xSpeed*=-1;
    }
    if (y<0) {
        ySpeed*=-1;
    }
    fill(250);
    rect(mouseX, mouseY, 120, 20);
    if (x<=mouseX&&x>=mouseX+120) {
        xSpeed*=-1;
    }
    if (y>=mouseY&&x>=mouseX&&x<=mouseX+120) {
        ySpeed*=-1;
    }
    textSize(36);
    if (y>=height) {
        background(250, 30, 40);
    }
    if (y>=height) {
        text("GAME OVER", 300, 250);
    }
    if (y>=height) {
        noLoop();
    }
}