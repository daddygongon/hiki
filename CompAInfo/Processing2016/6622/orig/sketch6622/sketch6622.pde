float x = 60;
float y = 440;
float easing = 0.05;
int Height=400;
boolean flag;

void setup() {
  size(700, 600);
  strokeWeight(1);
  ellipseMode(RADIUS);
}

void draw() {
  background(200, 200, 100);
  noStroke();
  fill(180, 200, 100);
  rect(595, 470, 50, 30); //maybe button 50,30
  stroke(1);
  fill(#C17542);
  rect(260, 450, 200, 200);
  ellipse(360, 450, 100, 40);
  fill(#933F07);
  ellipse(360, 450, 85, 25);
  noStroke();
  fill(255);
  ellipse(360, 464, 63, 10);// rice cake
  
  int targetX=mouseX;
  int targetY=mouseY;
  x+=(targetX-x)*easing;
  y+=(targetY-y)*easing;

  if (mousePressed) {  
    if (mouseX>=595 &&mouseX<=645 &&mouseY>=470 &&mouseY<=500) {
      if (flag==false);
      
      stroke(2);
      rect(110,110,80,80);
      noStroke();
      fill(255,0,0);
      ellipse(150, 150, 40, 40);
      fill(255);
      ellipse(150,150,30,30);
      
      flag=true;
    
  } else {  
          stroke(2);
      rect(110,110,80,80);
      stroke(0,0,255);
      strokeWeight(10);
      line(115,115,185,185);
      line(115,185,185,115);
    
    flag=true;
  }
  }
  if (mousePressed) {  
    fill(#A54C11);
    noStroke();
    quad(x+10, y-30, x-270, y-140, x-280, y-110, x, y);
    stroke(1);
    strokeWeight(1);
    quad(x-285, y-35, x-225, y-200, x-175, y-180, x-235, y-15);
  } else {  
    fill(#A54C11);
    noStroke();
    quad(x+25, y-20, x-170, y-290, x-195, y-270, x, y);
    stroke(1);
    strokeWeight(1);
    quad(x-240, y-220, x-110, y-320, x-80, y-275, x-210, y-178);
  }
}