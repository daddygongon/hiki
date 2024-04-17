PImage img;
float ball_x = 200.0;
float ball_y = 400.0;
float ball_vx = 5.0;
float ball_vy = -10.0;
//int [][] block = {{0,0,0,0,0,0,1},{0,0,0,0,0,0,0},{0,0,0,0,0,0,0},{0,0,0,0,0,0,0}, {0,0,0,0,0,0,0}};
int [][] block = { { 1, 1, 1, 1, 1, 1, 1 }, {1, 1, 1, 1, 1, 1, 1 }, 
                  {1, 1, 1, 1, 1, 1, 1}, {1, 1, 1, 1, 1, 1, 1 }, {1, 1, 1, 1, 1, 1, 1} };
int bar_x = 150;
int bar_y = 550;

void setup(){
  size( 400, 600 );
  frameRate( 30 );
}

void draw() {
  img = loadImage("36164204-s.jpg");
  image(img, 0, 0);
  noStroke();
  rect( 0, 0, 10, 600 );
  rect( 0, 0, 400, 10 );
  rect( 390, 0, 10, 600 );
  drawBlock();
  fill( 0, 205, 160 );
  bar_x = mouseX;
  if( bar_x < 40 ) bar_x = 40;
  if( bar_x > 360 ) bar_x = 360;
  rect( bar_x - 30, bar_y, 60, 20 );
  fill(240, 30, 0 );
  ellipse( ball_x, ball_y, 20, 20 );
  ball_x += ball_vx;
  ball_y += ball_vy;
  
  if( ball_x < 20 ){
    ball_x = 20;
    ball_vx = -ball_vx;
  }
  if( ball_x > 380 ){
    ball_x = 380;
    ball_vx = -ball_vx;
  }
  if( ball_y < 20 ){
    ball_y = 20;
    ball_vy = -ball_vy;
  }
  if( ball_y > bar_y-10 ){
    if( ball_x > bar_x-30 && ball_x < bar_x+30 ){
      ball_y = bar_y-10;
      ball_vy = -ball_vy;
      ball_vx += ( ball_x - bar_x) / 10;
    }
  }
  if( ball_y > bar_y+40 ){
    noLoop();
    fill( 255, 0, 0 );
    textSize(50);
    text( "GameOver", 70, 240 );
  }
  
  for( int i=0; i<5; i++ ){
    for( int j=0; j<7; j++ ){
      if( block[i][j] > 0 ){
        if( ball_x > j*50+20 && ball_x < j*50+60 &&
            ball_y > i*60+20 && ball_y < i*60+60 ){
              ball_vy = -ball_vy;
              block[i][j] --;
            }
      }
    }
  }
  int k=1;
  for( int i=0; i<5; i++ ){
    for( int j=0; j<7; j++ ){
      if( block[i][j] > 0 )
        k = 0;
    }
  }
  if( k == 1 ){
    noLoop();
    fill( 255, 0, 0 );
    textSize(50);
    text( "Clear", 140, 200);
  }
}

void drawBlock() {
  int i, j;
  for( i=0; i<5; i++ ){
    for( j=0; j<7; j++ ){
      switch( block[i][j] ){
        case 3:
        stroke( 0 );
        fill( 100 );
        break;
        case 2:
        stroke( 0 );
        fill( 150 );
        break;
        case 1:
        stroke( 0 );
        fill( 200 );
      }
      if( block[i][j] > 0 ){
        rect( j*50+30, i*60+30, 40, 10 );
      }
    }
  }
}

