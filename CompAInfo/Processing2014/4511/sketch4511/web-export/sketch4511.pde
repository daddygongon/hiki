int r = 10;
int x0 = r;
int y0 = r;
int dx0 = 2;
int dy0 = 3;
int x1 = r+100;
int y1 = r;
int dx1 = 5;
int dy1 = 1;
int x2 = r;
int y2 = r+100;
int dx2 = 3;
int dy2 = 5;

void setup()
{
  size(300,300);
  ellipseMode(RADIUS);
  background(50,0,80);
  frameRate(50);
}

void draw()
{
  stroke( 0, 0, 0, 10 );
  fill( 0, 0, 0, 10 );
  rect( 0, 0, width, height );

  stroke( 0, 0, 255, 100 );
  fill( 0, 255, 150, 100 );

  ellipse( x0+100, y0-20, r, r );
  x0 = x0 + dx0;
  y0 = y0 + dy0;
  if( y0 > height-r || y0 < r ) dy0 = -dy0;
  if( x0 > width-r || x0 < r )  dx0 = -dx0;
 
  ellipse( x1-100, y1-80, r, r );
  x1 = x1 + dx1;
  y1 = y1 + dy1;
  if( y1 > height-r || y1 < r ) dy1 = -dy1;
  if( x1 > width-r || x1 < r )  dx1 = -dx1;
 
  ellipse( x2+100, y2+80, r, r );
  x2 = x2 + dx2;
  y2 = y2 + dy2;
  if( y2 > height-r || y2 < r ) dy2 = -dy2;
  if( x2 > width-r || x2 < r )  dx2 = -dx2;
}


