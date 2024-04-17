

int startX = 0;
int stopX = 890;
int startY=200;
int stopY=200;
float x=startX;
float y=startY;
float step=0.02;
float pct=0.0;
int direction=1;
float speed=15.0;
PImage photo;

void setup() {
  size(900, 500);
  photo=loadImage("1280x720xc0556d9e823866572a88f79.jpg");
  textSize(128);
}

void draw() {
  background(255);
  image(photo,-160,-200);
  fill(255);
  if(keyPressed){
    if(key == '1'){
      fill(random(255),random(255),random(255));
    }
  }
ellipse(400,340,7,30);
ellipse(390,340,9,35);
ellipse(500,340,7,30);
ellipse(510,340,9,35);

ellipse(430,380,40,70); //migiashi
ellipse(470,380,40,70);//hidariashi

ellipse(400,300,50,100);//migite
ellipse(500,300,50,100);//hidarite


ellipse(450,300,110,170);


  if (pct<1.0) {
    x=startX+((stopX-startX)*pct);
    y=startY+((stopY-startY)*pct);
    pct +=step;
  }
  x+=speed*direction;
  if ((x>890)||(x<10)) {
    direction=-direction;
  }
  
if(mousePressed){
  noLoop();
}


 if(mousePressed){
if(435<x&&x<465){
  fill(random(255),random(255),random(255));
   text("w",80,130);
   fill(random(255),random(255),random(255));
   text("o",180,130);
   fill(random(255),random(255),random(255));
   text("n",250,130);
   fill(random(255),random(255),random(255));
   text("d",323,130);
   fill(random(255),random(255),random(255));
   text("e",390,130);
   fill(random(255),random(255),random(255));
   text("r",455,130);
   fill(random(255),random(255),random(255));
   text("f",510,130);
   fill(random(255),random(255),random(255));
   text("u",560,130);
   fill(random(255),random(255),random(255));
   text("l",640,130);
   fill(random(255),random(255),random(255));
   text("!",680,130);
   fill(random(255),random(255),random(255));
   text("!",720,130);
   
   
  
}else{

  text("bad!",300,150);
  
}
 }
  
  
  fill(255);
  if(keyPressed){
    if(key == '1'){
      fill(random(255),random(255),random(255));
    }
  }
  ellipse(x, y, 80, 70);
  strokeWeight(2);
  line(x-15, y-10, x+15, y-10);


  fill(0);
  ellipse(x-15, y-10, 7, 7); 
  fill(0);
  ellipse(x+15, y-10, 7, 7);
}




