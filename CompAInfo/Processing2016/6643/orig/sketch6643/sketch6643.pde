 

float ball_x = 200.0;

float ball_y =500.0;

float ball_vx = 6.0;

float ball_vy = -6.0;


int [][] block = { {1, 1, 1, 1, 1, 1, 1 }, 

                  {1, 1, 1, 1, 1, 1, 1}, {1, 1, 1, 1, 1, 1, 1 }, { 2, 2, 2, 2, 2, 2, 2 },{1,1,1,1,1,1,1}, {2, 2, 2, 2, 2, 2, 2} };


int bar_x = 150;

int bar_y = 500;
PImage img;



 

 

void setup(){

  size( 450, 600);

  frameRate( 30 );
}



void draw() {
  
   img = loadImage("dcm.jpg");

  image(img, 0, 0);


 

  noStroke();

  rect( 0, 0, 10, 600 );

  rect( 0, 0, 450, 10 );
  rect( 440, 0, 10, 600);

  drawBlock();

  fill( 200, 100, 0 );

  bar_x = mouseX;

  if( bar_x < 40 ) bar_x = 40;

  if( bar_x > 410) bar_x = 410;

  rect( bar_x - 30, bar_y, 60, 20 );

  fill( 255 );
  
  ellipse( ball_x, ball_y, 15, 15 );
  fill(0);
  

  ball_x += ball_vx;

  ball_y += ball_vy;
  
  
if( ball_x < 10 ){

    ball_x = 10;

    ball_vx = -ball_vx;

  } if( ball_x > 430 ){

    ball_x = 430;

    ball_vx = -ball_vx;

  }

  if( ball_y < 10 ){

    ball_y = 10;

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

    textSize(60);

    text( "GameOver!", 70, 240 );

  }

  

 

 

  for( int i=0; i<6; i++ ){

    for( int j=0; j<7; j++ ){

      if( block[i][j] > 0 ){

        if( ball_x > j*60+30 && ball_x < j*60+80 &&

            ball_y > i*50+150 && ball_y < i*50+160 ){

              ball_vy = -ball_vy;

              block[i][j] --;

            }

      }

    }

  }

  int k=1;

  for( int i=0; i<6; i++ ){

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

  for( i=0; i<6; i++ ){

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

        rect( j*60+30, i*50+150, 40,10);

      }
    }
  } 