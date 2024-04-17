int rad = 20;       
float x0pos, y0pos;
float x1pos, y1pos;
float x2pos, y2pos;
float x3pos, y3pos;
float x4pos, y4pos;
float x5pos, y5pos;
float x6pos, y6pos;
float x7pos, y7pos;
float x8pos, y8pos;
float x9pos, y9pos;
float x10pos, y10pos;
float x11pos, y11pos;
float x12pos, y12pos;
float x13pos, y13pos;
float x14pos, y14pos;
float x15pos, y15pos;


float x0speed = 10; 
float y0speed = 8; 
float x1speed = 10;
float y1speed = 9;
float x2speed = 10;
float y2speed = 10;
float x3speed = 10; 
float y3speed = 11; 
float x4speed = 10;
float y4speed = 12;
float x5speed = 10;
float y5speed = 13;
float x6speed = 10; 
float y6speed = 14; 
float x7speed = 10;
float y7speed = 15;
float x8speed = 10;
float y8speed = 16;
float x9speed = 10; 
float y9speed = 17; 
float x10speed = 10;
float y10speed = 18;
float x11speed = 10;
float y11speed = 19;
float x12speed = 10; 
float y12speed = 20; 
float x13speed = 10;
float y13speed = 21;
float x14speed = 10;
float y14speed = 22;
float x15speed = 10; 
float y15speed = 21; 

int x0direction = 1;
int y0direction = 1;
int x1direction = 1;
int y1direction = 1;
int x2direction = 1;
int y2direction = 1;
int x3direction = 1;
int y3direction = 1;
int x4direction = 1;
int y4direction = 1;
int x5direction = 1;
int y5direction = 1;
int x6direction = 1;
int y6direction = 1;
int x7direction = 1;
int y7direction = 1;
int x8direction = 1;
int y8direction = 1;
int x9direction = 1;
int y9direction = 1;
int x10direction = 1;
int y10direction = 1;
int x11direction = 1;
int y11direction = 1;
int x12direction = 1;
int y12direction = 1;
int x13direction = 1;
int y13direction = 1;
int x14direction = 1;
int y14direction = 1;
int x15direction = 1;
int y15direction = 1;



PImage photo;

void setup() 
{
  size(1000, 700);
  photo=loadImage("3A287858-BBA1-11E1-B96B-DC4EFFDA975F_o.jpg");
  frameRate(30);
  ellipseMode(RADIUS);

  x0pos = random(900);
  y0pos = random(600);
  x1pos = random(900);
  y1pos = random(600);
  x2pos = random(900);
  y2pos = random(600);
  x3pos = random(900);
  y3pos = random(600);
  x4pos = random(900);
  y4pos = random(600);
  x5pos = random(900);
  y5pos = random(600);
  x6pos = random(900);
  y6pos = random(600);
  x7pos = random(900);
  y7pos = random(600);
  x8pos = random(900);
  y8pos = random(600);
  x9pos = random(900);
  y9pos = random(600);
  x10pos = random(900);
  y10pos = random(600);
  x11pos = random(900);
  y11pos = random(600);
  x12pos = random(900);
  y12pos = random(600);
  x13pos = random(900);
  y13pos = random(600);
  x14pos = random(900);
  y14pos = random(600);
  x15pos = random(900);
  y15pos = random(600);
}

void draw() 
{
  background(255);
  image(photo, 0, 0);




  //ball No.0
  x0pos = x0pos + ( x0speed * x0direction );
  y0pos = y0pos + ( y0speed * y0direction );


  if (x0pos > width-rad || x0pos < rad) {
    x0direction *= -1;
  }
  if (y0pos > height-rad || y0pos < rad) {
    y0direction *= -1;
  }


  fill(255);
  ellipse(x0pos, y0pos, rad, rad);

  //ball No.1
  x1pos = x1pos + ( x1speed * x1direction );
  y1pos = y1pos + ( y1speed * y1direction );


  if (x1pos > width-rad || x1pos < rad) {
    x1direction *= -1;
  }
  if (y1pos > height-rad || y1pos < rad) {
    y1direction *= -1;
  }

  fill(255);
  ellipse(x1pos, y1pos, rad, rad);

  //ball No.2
  x2pos = x2pos + ( x2speed * x2direction );
  y2pos = y2pos + ( y2speed * y2direction );


  if (x2pos > width-rad || x2pos < rad) {
    x2direction *= -1;
  }
  if (y2pos > height-rad || y2pos < rad) {
    y2direction *= -1;
  }

  fill(255);
  ellipse(x2pos, y2pos, rad, rad);

  //ball No.3
  x3pos = x3pos + ( x3speed * x3direction );
  y3pos = y3pos + ( y3speed * y3direction );


  if (x3pos > width-rad || x3pos < rad) {
    x3direction *= -1;
  }
  if (y3pos > height-rad || y3pos < rad) {
    y3direction *= -1;
  }

  fill(255);
  ellipse(x3pos, y3pos, rad, rad);

  //ball No.4
  x4pos = x4pos + ( x4speed * x4direction );
  y4pos = y4pos + ( y4speed * y4direction );


  if (x4pos > width-rad || x4pos < rad) {
    x4direction *= -1;
  }
  if (y4pos > height-rad || y4pos < rad) {
    y4direction *= -1;
  }

  fill(255);
  ellipse(x4pos, y4pos, rad, rad);

  //ball No.5
  x5pos = x5pos + ( x5speed * x5direction );
  y5pos = y5pos + ( y5speed * y5direction );


  if (x5pos > width-rad || x5pos < rad) {
    x5direction *= -1;
  }
  if (y5pos > height-rad || y5pos < rad) {
    y5direction *= -1;
  }

  fill(255);
  ellipse(x5pos, y5pos, rad, rad);

  //ball No.6
  x6pos = x6pos + ( x6speed * x6direction );
  y6pos = y6pos + ( y6speed * y6direction );


  if (x6pos > width-rad || x6pos < rad) {
    x6direction *= -1;
  }
  if (y6pos > height-rad || y6pos < rad) {
    y6direction *= -1;
  }

  fill(255);
  ellipse(x6pos, y6pos, rad, rad);

  //ball No.7
  x7pos = x7pos + ( x7speed * x7direction );
  y7pos = y7pos + ( y7speed * y7direction );


  if (x7pos > width-rad || x7pos < rad) {
    x7direction *= -1;
  }
  if (y7pos > height-rad || y7pos < rad) {
    y7direction *= -1;
  }

  fill(255);
  ellipse(x7pos, y7pos, rad, rad);

  //ball No.8
  x8pos = x8pos + ( x8speed * x8direction );
  y8pos = y8pos + ( y8speed * y8direction );


  if (x8pos > width-rad || x8pos < rad) {
    x8direction *= -1;
  }
  if (y8pos > height-rad || y8pos < rad) {
    y8direction *= -1;
  }

  fill(255);
  ellipse(x8pos, y8pos, rad, rad);

  //ball No.9
  x9pos = x9pos + ( x9speed * x9direction );
  y9pos = y9pos + ( y9speed * y9direction );


  if (x9pos > width-rad || x9pos < rad) {
    x9direction *= -1;
  }
  if (y9pos > height-rad || y9pos < rad) {
    y9direction *= -1;
  }

  fill(255);
  ellipse(x9pos, y9pos, rad, rad);

  //ball No.10
  x10pos = x10pos + ( x10speed * x10direction );
  y10pos = y10pos + ( y10speed * y10direction );


  if (x10pos > width-rad || x10pos < rad) {
    x10direction *= -1;
  }
  if (y10pos > height-rad || y10pos < rad) {
    y10direction *= -1;
  }

  fill(255);
  ellipse(x10pos, y10pos, rad, rad);

  //ball No.11
  x11pos = x11pos + ( x11speed * x11direction );
  y11pos = y11pos + ( y11speed * y11direction );


  if (x11pos > width-rad || x11pos < rad) {
    x11direction *= -1;
  }
  if (y11pos > height-rad || y11pos < rad) {
    y11direction *= -1;
  }

  fill(255);
  ellipse(x11pos, y11pos, rad, rad);

  //ball No.12
  x12pos = x12pos + ( x12speed * x12direction );
  y12pos = y12pos + ( y12speed * y12direction );


  if (x12pos > width-rad || x12pos < rad) {
    x12direction *= -1;
  }
  if (y12pos > height-rad || y12pos < rad) {
    y12direction *= -1;
  }

  fill(255);
  ellipse(x12pos, y12pos, rad, rad);

  //ball No.13
  x13pos = x13pos + ( x13speed * x13direction );
  y13pos = y13pos + ( y13speed * y13direction );


  if (x13pos > width-rad || x13pos < rad) {
    x13direction *= -1;
  }
  if (y13pos > height-rad || y13pos < rad) {
    y13direction *= -1;
  }

  fill(255);
  ellipse(x13pos, y13pos, rad, rad);

  //ball No.14
  x14pos = x14pos + ( x14speed * x14direction );
  y14pos = y14pos + ( y14speed * y14direction );


  if (x14pos > width-rad || x14pos < rad) {
    x14direction *= -1;
  }
  if (y14pos > height-rad || y14pos < rad) {
    y14direction *= -1;
  }

  fill(255);
  ellipse(x14pos, y14pos, rad, rad);

  //ball No.15
  x15pos = x15pos + ( x15speed * x15direction );
  y15pos = y15pos + ( y15speed * y15direction );


  if (x15pos > width-rad || x15pos < rad) {
    x15direction *= -1;
  }
  if (y15pos > height-rad || y15pos < rad) {
    y15direction *= -1;
  }

  fill(255);
  ellipse(x15pos, y15pos, rad, rad);

  //mouse control

  float d0=dist(x0pos, y0pos, mouseX, mouseY);
  float d1=dist(x1pos, y1pos, mouseX, mouseY);
  float d2=dist(x2pos, y2pos, mouseX, mouseY);
  float d3=dist(x3pos, y3pos, mouseX, mouseY);
  float d4=dist(x4pos, y4pos, mouseX, mouseY);
  float d5=dist(x5pos, y5pos, mouseX, mouseY);
  float d6=dist(x6pos, y6pos, mouseX, mouseY);
  float d7=dist(x7pos, y7pos, mouseX, mouseY);
  float d8=dist(x8pos, y8pos, mouseX, mouseY);
  float d9=dist(x9pos, y9pos, mouseX, mouseY);
  float d10=dist(x10pos, y10pos, mouseX, mouseY);
  float d11=dist(x11pos, y11pos, mouseX, mouseY);
  float d12=dist(x12pos, y12pos, mouseX, mouseY);
  float d13=dist(x13pos, y13pos, mouseX, mouseY);
  float d14=dist(x14pos, y14pos, mouseX, mouseY);
  float d15=dist(x15pos, y15pos, mouseX, mouseY);

  if (d0<25||d1<25||d2<25||d3<25||d4<25||d5<25||d6<25||d7<25||d8<25||d9<25||d10<25||d11<25||d12<25||d13<25||d14<25||d15<25) {
    noLoop();
    textSize(100);
    text("Game Over", 250, 300);
  }
  
  
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 10, 10);
  
}



