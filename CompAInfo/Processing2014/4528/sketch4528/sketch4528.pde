int l = 20;
int n = 20;
int a = 300;//main
int b = 300;//main
int r = 10;
int x[] = new int[10];
int y[] = new int[10];
int vx[] = new int[10];
int vy[] = new int[10];

void setup() {
  size(600, 600);
  background(255);
  int i;
  for ( i = 0; i < 10 ; i++ ){
    x[i] = (int)random( r, width-r );
    y[i] = (int)random( r, height-r );
    vx[i] = (int)random( -5, 6 );
    vy[i] = (int)random( -5, 6 );
  }
}

void draw() {
  background(255);
  fill(255);
  stroke(0);
  rect(20, 20, 560, 560);
  ellipseMode(RADIUS);
  stroke( 0, 0, 255, 100 );
  int i;
  for ( i = 0 ; i < 9 ; i++ )
  {
    fill( 0, 255, 255, 100 );
    stroke( 0, 0, 255, 100 );
    ellipse( x[i], y[i], r, r );
    x[i] = x[i] + vx[i];
    y[i] = y[i] + vy[i];
    if ( y[i] > height-r || y[i] < r) vy[i] = -vy[i];
    if ( x[i] > width-r || x[i] < r) vx[i] = -vx[i];
  }

  float d[] = new float[10];
  int hit=0;
  
  for(i=0;i<10;i++){
    d[i]=dist(a, b, x[i], y[i]);
    
    if(d[i]<=20){
      hit=1;
    }
  }
  if (keyPressed && (key == CODED)) {
    if (keyCode ==LEFT) {
      a-=4;
    } 
    else if (keyCode == RIGHT) {
      a+=4;
    }
    else if (keyCode == DOWN) {
      b+=4;
    }
    else if (keyCode == UP) {
      b-=4;
    }
  }

  if ((a + 10 < 580) && (a - 10 > 20) 
    && (b + 10 < 580) && (b - 10 > 20)
    && (hit == 0)) {
    fill(0);
  }
  else {
    fill(255);
    background(0);
    textSize(20);
    text("GAMEOVER", 240, 270);
    noLoop();
  }
  noStroke();
  fill(230,10,10);
  ellipse(a, b, 10, 10);
}

