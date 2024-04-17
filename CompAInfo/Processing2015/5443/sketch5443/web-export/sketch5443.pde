float x=600;
float y=650;
int bodyHeight =60;//dounonagasa

float easing =0.5;


int r = 10;
int x0 = r;
int y0 = r;
int dx0 = 13;
int dy0 = 17;
int x1 = r+100;
int y1 = r;
int dx1 = 10;
int dy1 = 2;
int x2 = r;
int y2 = r+100;
int dx2 = 15;
int dy2 = 5;





void setup() {
  size(700, 700);
  ellipseMode(RADIUS);
  background(50, 205, 50);
  frameRate(100);
}

void draw() {
  //background(50,205,50);
  float t=dist( x0, y0, x, y);
  float u=dist( x1, y1, x, y ); 
  float v=dist( x2, y2, x, y );
  if (t<20||u<20||v<20) {
    stroke( 255, 0, 0, 100 );
    noLoop();
    strokeWeight(25);
    stroke(255, 0, 0);

    line(20, 200, 20, 500);
    line(20, 350, 100, 400);
    line(120, 200, 160, 250);
    line(60, 200, 100, 250);//do

    line(180, 220, 260, 250);
    line(160, 500, 330, 370);//n

    line(300, 220, 500, 220);
    line(500, 220, 400, 370);
    line(370, 350, 450, 450);//ma

    line(680, 200, 480, 320);
    line(585, 260, 585, 480);//i
  }
  else {
    fill(0);
  }




  fill(0);
  stroke( 0, 0, 0, 10 );
  fill( 50, 205, 50, 10);
  rect( 0, 0, width, height );

  stroke( 255, 0, 0, 100 );
  fill( 0, 0, 0, 100 );

  ellipse( x0, y0, r, r );
  x0 = x0 + dx0;
  y0 = y0 + dy0;
  if ( y0 > height-r || y0 < r ) dy0 = -dy0;
  if ( x0 > width-r || x0 < r )  dx0 = -dx0;

  ellipse( x1, y1, r, r );
  x1 = x1 + dx1;
  y1 = y1 + dy1;
  if ( y1 > height-r || y1 < r ) dy1 = -dy1;
  if ( x1 > width-r || x1 < r )  dx1 = -dx1;

  ellipse( x2, y2, r, r );
  x2 = x2 + dx2;
  y2 = y2 + dy2;
  if ( y2 > height-r || y2 < r ) dy2 = -dy2;
  if ( x2 > width-r || x2 < r )  dx2 = -dx2;
  fill(255);



  float targetX=mouseX;
  x+=(targetX-x)*easing;
  if (mousePressed) {
    y=600;
    x=constrain(x, 0, 700);
  }
  else {
    y=650; 
    x=constrain(x, 0, 700);
  }



  //doutai
  line(x, y, x, y+30);

  //atama
  fill(255);
  ellipse(x, y, r, r);


  //migiude
  line(x, y+15, x+10, y+15);
  line(x+10, y+15, x+15, y+5);

  //hidariude
  line(x, y+15, x-10, y+15);
  line(x-10, y+15, x-15, y+25);

  //hidariasi
  line(x, y+30, x-10, y+50);

  //migiasi
  line(x, y+30, x+10, y+30);
  line(x+10, y+30, x+7, y+40);
}



