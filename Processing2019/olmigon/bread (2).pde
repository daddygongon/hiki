PImage img1;
PImage img2;
PImage imglast;
PImage img3;//zomb
PImage imghappy;
PImage imgboy;
PImage imgkega;
PImage imgkega2;


int radius=40;
float z=-radius;
float speed =30;

int radius3=40;
float s=-radius;
float speed3=20;

int radius1=40;
float t=-radius;
float speed2 =60;

float x;
float y;
float easing=0.1;



void setup() {
  size(1400, 800);


  textSize(200);
  textAlign(CENTER);


  img1=loadImage("runningman.png");
  img2=loadImage("woman.com.png");
  imglast=loadImage("huhuhu.png");
  img3=loadImage("fantasy_zombie_woman.png");
  imghappy=loadImage("couple_udekumi_school.png");
  imgboy=loadImage("school_textbook_omoi_boy.png");
imgkega=loadImage("kega_matsubadue1_man.png");
imgkega2=loadImage("kega_sankakukin.png");

  x = 400;
} 

void draw() {


  z +=speed;
  if (z>width+radius) {
    z=-radius;
  }

  t+=speed2;
  if (t>width+radius) {
    t=-radius;
  }
  
  s+=speed3;
  if (s>width+radius) {
    s=-radius;
  }

  int targetX=mouseX;
  x +=(targetX-x)*easing;

  background(#505050);
  fill(0);
  triangle(700, 100, 0, 0, 1400, 0);

  fill(255, 255, 255);
  quad(0, 0, 703, 100, 700, 110, -10, 5); //left

  fill(#E0DEDE);
  quad(703, 100, 1400, 0, 1410, 5, 700, 110); //right

  fill(255, 255, 255);
  quad(-10, 5, 700, 110, 700, 400, 0, 260); // left wall

  fill(#E0DEDE);
  quad(700, 110, 1410, 5, 1400, 260, 700, 400); //right wall

  noStroke();
  fill(#7E7E7E);
  quad(0, 260, 700, 400, 700, 450, 0, 310);
  quad(700, 400, 1400, 260, 1400, 310, 700, 450);

  stroke(3);
  fill(0);
  quad(700, 450, 1400, 310, 1400, 315, 700, 455);


  noFill();
  quad(0, 310, 700, 450, 700, 455, 0, 315);

  fill(#505050);
  quad(0, 265, 700, 410, 700, 415, 0, 270);

  fill(0);
  quad(700, 410, 1400, 265, 1400, 270, 700, 415);

  line(700, 415, 755, 425);//left
  line(700, 415, 645, 425); //right
  line(700, 440, 0, 300); 
  line(700, 440, 1400, 300); 

  image(img1, 1400-x, 0.3*x, 300, 300);
  image(img3, z-200, 100+0.25*z, 200, 250); //front
  image(imgboy, 1400-t, 550-0.25*t, 200, 250);
  image(img2, s-00, 300+0.25*s, 200, 250); //oku


  if (x>800) {
    image(img3, z-200, 100+0.25*z, 200, 250); //front
    image(img1, 1400-x, 0.3*x, 300, 300);
    image(imgboy, 1400-t, 550-0.25*t, 200, 250);
    image(img2, s-00, 300+0.25*s, 200, 250); //oku
  }

  if (x>975) {
    image(img3, z-200, 100+0.25*z, 200, 250); //front
    image(imgboy, 1400-t, 550-0.25*t, 200, 250);
    image(img1, 1400-x, 0.3*x, 300, 300);
    image(img2, s-00, 300+0.25*s, 200, 250); //oku
  }
  
    if (x>1100) {
      image(img2, s-00, 300+0.25*s, 200, 250); //oku
      image(img3, z-200, 100+0.25*z, 200, 250); //front
      image(img1, 1400-x, 0.3*x, 300, 300);
    }

    if (dist(1400-x, 0.3*x+50, z-200, 100+0.25*z) <40) {
      background(255, 255, 255);

      fill(#FF0810);
      text("LOVE", 700, 400);
      image(imglast, 600, 300, 500, 500);
      noLoop();
    }

    if (x>1300) {

      image(img3, -1300+x, 530+1300-x, 200, 250);

      if (dist(1400-x, 0.3*x+50, -1300+x, 530+1300-x)<40) {
        background(255, 255, 255);
        fill(#FF0810);
        text("LOVE", 700, 400);
        image(imglast, 600, 300, 500, 500);
        noLoop();
      }
    }

    if (dist( 1400-x, 0.3*x+50, s-00, 300+0.25*s)<40) {
      background(255, 255, 255);
      fill(#FF0810);
      image(imghappy, 600, 300, 500, 500);
      text("LOVE", 700, 400);
      noLoop();
    }

    if (dist( 1400-x, 0.3*x, 1350-t, 550-0.25*t )<40) {
      background(0);
      fill(#FF0810);
      image(imgkega, 550, 200, 500, 500);
      image(imgkega2,100,300,400,400);
      text("GAME OVER", 700, 400);
      noLoop();

    }


      x+=5; 
      y+=3;
    
  }
