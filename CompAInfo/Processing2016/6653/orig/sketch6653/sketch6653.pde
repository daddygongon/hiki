float speed = 50;
int diameter=100;
float x;
float y;

float dx= mouseX-x;
float dy= mouseY-y;
final int IDLE=0;
final int GAME=1;
;

int status=IDLE;
boolean clicked=false;
int cnt;

void setup() {
  size(600, 400);
  x=width/2;
  y=height/2;
}


void draw() {
  switch(status) {

  case IDLE:
    background(45,23,76);


    fill(255);
    textAlign(CENTER);
    textSize(40);
    text("PLEASE CLICK", width/2, height/2);
    if (clicked) {
      cnt=0;
      status=GAME;
    }
  
  break;
 case GAME:

  background(204,45,22);
  ellipse(mouseX, mouseY, 9, 9);
  fill(76, 34, 11);
  //
  x += random(-speed, speed);
  y+= random(-speed, speed);
  x=constrain(x, 0, width);
  y =constrain(y, 0, height);
  ellipse(x, y, diameter, diameter);
  fill(12, 43, 54);

  if (abs(mouseY-y)<=50 && abs(mouseX-x)<=50) {


   
 
  textSize(100);
  text("GAME OVER", width/2, height/2);
noLoop();
  textAlign(CENTER);

  if (clicked)
    cnt=0;
  status=GAME;

  }


  //
}

//



}
void mousePressed() {
 clicked=true;}