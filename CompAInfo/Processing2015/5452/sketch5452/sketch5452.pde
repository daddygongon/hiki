int r = 15;
int p=15;
int x0 = r;
int y0 = r;
int dx0 = 2;
int dy0 = 3;
int x1 = r+100;
int y1 = r;
int dx1 = 5;
int dy1 = 1;
int x2 = r+50;
int y2 = r+100;
int dx2 = 3;
int dy2 = 5;
int x3=r+200;
int y3=r+100;
int vx3 =4;
int vy3=6;
int x4=r+60;
int y4=r+100;
int vx4=3;
int vy4=2;
int a, b;


void setup()
{
  size(500, 500);
  ellipseMode(RADIUS);
  background(0, 0, 0);
}

void draw()
{
  a=mouseX;
  b=mouseY;
  background(0);

  fill(255, 0, 0);
  ellipse(a, b, p, p);
  stroke(random(255), random(255), random(255), random(50, 100));
  fill( random(255), random(255), random(255));
  if (keyPressed) {
    if (key=='r') {
      fill(255, 0, 0);
    }
    if (key=='g') {
      fill(0, 255, 0);
    }
    if (key=='b') {
      fill(0, 0, 255);
    }
  }


  ellipse( x0, y0, r, r );
  x0 = x0 + dx0;
  y0 = y0 + dy0;
  if ( y0 > height-r || y0 < r ) { 
    dy0 = -dy0 ;
  }
  if ( x0 > width-r || x0 < r ) { 
    dx0 = -dx0;
  }
  float size=dist(a, b, x0, y0);
  if ( size<r+p) { 
   
    dx0 = -dx0;
    dy0=-dy0;
  }


  ellipse( x1, y1, r, r );
  x1 = x1 + dx1;
  y1 = y1 + dy1;
  if ( y1 > height-r || y1 < r ) {
    dy1 = -dy1;
  }
  if ( x1 > width-r || x1 < r ) { 
    dx1 = -dx1;
  }
  float size1=dist(a, b, x1, y1);
  if ( size1<r+p) { 
     
    dx1 = -dx1;
    dy1=-dy1;
  }




  ellipse( x2, y2, r, r );
  x2 = x2 + dx2;
  y2 = y2 + dy2;
  if ( y2 > height-r || y2 < r ) {
    dy2 = -dy2 ;
    background(255, random(200, 255), 0);
  }
  if ( x2 > width-r || x2 < r ) { 
    dx2 = -dx2;
    background(255, random(200, 255), 0);
  }
  float size2=dist(a, b, x2, y2);
  if ( size2<r+p) { 
     
    dx2 = -dx2;
    dy2=-dy2;
  }




  ellipse( x3, y3, r, r );
  x3 = x3 + vx3;
  y3 = y3 + vy3;
  if ( y3 > height-r || y3 < r ) { 
    vy3 = -vy3;
    background(255, random(200, 255), 0);
  }
  if ( x3 > width-r || x3 < r ) {
    vx3 = -vx3;
    background(255, random(200, 255), 0);
  }
  float size3=dist(a, b, x3, y3);
  if ( size3<r+p) { 
      
    vx3 = -vx3;
    vy3=-vy3;
  }




  ellipse( x4, y4, r, r );
  x4 = x4 + vx4;
  y4 = y4 + vy4;
  if ( y4 > height-r || y4 < r ) { 
    vy4 = -vy4;
    background(255, random(200, 255), 0);
  }
  if ( x4 > width-r || x4 < r ) {
    vx4 = -vx4;
    background(255, random(200, 255), 0);
  }
  float size4=dist(a, b, x4, y4);
  if ( size4<r+p) { 
    vx4 = -vx4;
    vy4=-vy4;
  }
}



