float velocity = 0;        
float acceleration = 0.05; 
int s, m, h, x = 0, y = 40;

float ang=0;

void setup() {
  size(1000, 850, P3D);

  noFill();
}

void draw() {


  //3d kaitenntai
  background(0, 25, 40);
  smooth();

  translate(width/2, height/2, 0);

  rotateY(frameCount*0.01);
  rotateX(frameCount*0.01);

  float lastX = 0, lastY = 0, lastZ = 0;
  float radius = 300;
  float s = 0, t = 0;

  while (s <= 180) {
    float radianS = radians(s);
    float radianT = radians(t);
    float x = radius * sin(radianS) * cos(radianT);
    float y = radius * sin(radianS) * sin(radianT);
    float z = radius * cos(radianS);

    stroke(0, 128, 128);
    fill(0, 0, 0, 10);
    if (lastX != 0) {
      strokeWeight(1);
      line(x, y, z, lastX, lastY, lastZ);
    }
    strokeWeight(15);
    point(x, y, z);

    lastX = x;
    lastY = y;
    lastZ = z;

    s++;
    t += velocity;
  }
  velocity += acceleration;

  //digital watch
  fill(200, 200, 200);
  textSize(30);
  textAlign(CENTER);
  rotateX(-frameCount*0.01);
  rotateY(-frameCount*0.01);

  if (minute()>9) {
    if (second()>9) {
      text(year()+"\n"+month()+"/"+day()+" "+hour()+":"+minute()+":"+second(), x, y-130, 0);
    }
  }

  if (minute()>9) {
    if (second()<10) {
      text(year()+"\n"+month()+"/"+day()+" "+hour()+":"+minute()+":0"+second(), x, y-130, 0);
    }
  }

  if (minute()<10) {
    if (second()<10) {
      text(year()+"\n"+month()+"/"+day()+" "+hour()+":0"+minute()+":0"+second(), x, y-130, 0);
    }
  }
  if (minute()<10) {
    if (second()>9) {
      text(year()+"\n"+month()+"/"+day()+" "+hour()+":0"+minute()+":"+second(), x, y-130, 0);
    }
  }

  //text TOKYO
  fill(180, 180, 180);
  text("TOKYO    2020", x, y-38);
  fill(200, 200, 200);
  text("TOKYO    2020", x, y-39);
  fill(220, 220, 220);
  text("TOKYO    2020", x, y-40);

  //olympic symbol
  noFill();
  strokeWeight(3);
  stroke(0);
  ellipse(x, y, 40, 40);
  stroke(255, 0, 0);
  ellipse(x+45, y, 40, 40);
  stroke(34, 173, 255);
  ellipse(x-45, y, 40, 40);
  stroke(34, 195, 80);
  ellipse(x+25, y+20, 40, 40);
  stroke(255, 255, 0);
  ellipse(x-25, y+20, 40, 40);

  noStroke();
  fill(255, 0, 0);
  ellipse(x+13, y-49, 25, 25);

  //Circletext
  String r, n = ":", o = "0";

  if (minute()<10) {
    r = n + o;
  } else {
    r = n;
  }

  String atn1="ATENE~1896~"+" "+(hour()-6)+r+minute()+"    ", atn2="ATENE~1896~"+" "+(24-(6-hour()))+r+minute()+"    ", 
    lon1="LONDON~1948~"+" "+(hour()-8)+r+minute()+"    ", lon2="LONDON~1948~"+" "+(24-(8-hour()))+r+minute()+"    ", 
    atr1="ATRANTA~1996~"+" "+(hour()-13)+r+minute()+"    ", atr2="ATRANTA~1996~"+" "+(24-(13-hour()))+r+minute()+"    ";

  rotateX(-frameCount*0.01);

  rotate(ang+=0.01);

  if (hour()<6) {
    textCircle(atn2+lon2+atr2, 350);
  }
  if (6<=hour()&&hour()<8) {
    textCircle(atn1+lon2+atr2, 350);
  }
  if (8<=hour()&&hour()<13) {
    textCircle(atn1+lon1+atr2, 350);
  }
  if (13<=hour()&&hour()<24) {
    textCircle(atn1+lon1+atr1, 350);
  }
}

void textCircle(String str, float radius) {


  for (int i=0; i<str.length (); i++) {
    rotate(TWO_PI/str.length());
    fill(218, 179, 0);
    text(str.charAt(i), 0, -radius);
  }
}