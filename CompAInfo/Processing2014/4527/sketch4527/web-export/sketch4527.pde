int r = 10;
int x[] = new int[10];
int y[] = new int[10];
int vx[] = new int[10];
int vy[] = new int[10];

void setup()
{
  size(300, 300);
  ellipseMode(RADIUS);
  background(0, 0, 0);
  frameRate(50);
  
  int i;
  for( i = 0; i < 10 ; i++ )
  {
    x[i] = (int)random( r, width-r );
    y[i] = (int)random( r, height-r );
    vx[i] = (int)random( -5, 6 );
    vy[i] = (int)random( -5, 6 );
  }
}

void draw()
{
  
  noStroke();
  fill( 0, 0, 0, 10 );
  rect( 0, 0, width, height );
  
  stroke( 0, 0, 255, 100 );
  fill( 0, 255, 255, 100 );
  int i;
  for( i = 0 ; i < 10 ; i++ )
  {
    ellipse( x[i], y[i], r, r );
   x[i] = x[i] + vx[i];
   y[i] = y[i] + vy[i];
   if( y[i] > height-r || y[i] < r) vy[i] = -vy[i];
   if( x[i] > width-r || x[i] < r) vx[i] = -vx[i];
  }
}



