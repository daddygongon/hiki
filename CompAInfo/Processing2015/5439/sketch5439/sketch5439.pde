int x;
int y;
int x1=180;
int y1=180;
int x2=-180;
int y2=180;
int x3=310;
int y3=-260;
int x4=-180;
int y4=-180;
int x5=260;
int y5=-170;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  fill(255, 255, 0);
  
  float z=dist(x, y, 180, 180);
  if (z<50) {
    x1=-1000;
  }
  ellipse(x1, y1, 40, 40);

  float b=dist(x, y, -180, 180);    

  if (b<50) {
    x2=-1000;
  }  
  ellipse(x2, y2, 40, 40);

  float v=dist(x, y, 310, -260);

  if (v<50) {
    x3=-1000;
  }
  ellipse(x3, y3, 40, 40);

  float c=dist(x, y, -180, -180);
  
  if (c<50) {
    x4=-1000;
  }
  ellipse(x4, y4, 40, 40);
  
  float m=dist(x,y,260,-170);
  
  if(m<50){
    x5=-1000;
  }
  ellipse(x5,y5,40,40);


  //arc(x, y, 50, 50, 0.52, 5.76);
  //ellipse(x,y,50,50);
  //ellipse(x+5, y-15, 2, 2);
  //ellipse(x+10, y-15, 2, 2);
  fill(255, 0, 255);
  if (key=='f') {
    x +=2;

    arc(x, y, 65, 65, 0.52, 5.76);
    //ellipse(x,y,50,50);
    fill(0);
    ellipse(x+4, y-18, 4, 10);
    ellipse(x+11, y-18, 4, 10);
    if (x>400)x=-400;
  }


  if (key=='d') {
    x -=2;
    arc(x, y, 65, 65, 22.52, 27.76);
    fill(0);
    ellipse(x-4, y-18, 4, 10);
    ellipse(x-11, y-18, 4, 10);
    if (x<-400)x=400;
  }


  if (key=='k') {
    y +=2;
    arc(x, y, 65, 65, 190.52, 195.76);
    //ellipse(x,y,50,50);
    fill(0);
    ellipse(x-18, y+4, 10, 4);
    ellipse(x-18, y+11, 10, 4);
    if (y>400)y=-400;
  }

  if (key=='j') {
    y -=2;
    arc(x, y, 65, 65, 11.52, 16.76);
    fill(0);
    ellipse(x+18, y+4, 10, 4);
    ellipse(x+18, y+11, 10, 4);
    if (y<-400)y=400;
  }





  fill(255, 0, 0);
  noStroke();
  rect(40, 40, 280, 100);
  rect(40, 220, 280, 100);
  rect(40, -320, 280, 20);
  rect(40, -320, 20, 280);
  rect(40, -60, 280, 20);
  rect(300, -220, 20, 180);
  rect(160, -220, 160, 20);
  rect(160, -220, 50, 80);
  rect(-140, -140, 100, 100);
  rect(-140, -320, 100, 100);
  rect(-320, -140, 100, 100);
  rect(-320, -320, 100, 100);
  rect(-320, 40, 280, 100);
  rect(-320, 220, 100, 100);
  rect(-140, 40, 100, 280);

  if (key=='s') {
    fill(random(255), random(255), random(255));
    arc(x, y, 90, 90, 0.052, 5.76);
    fill(0);
    ellipse(x+4, y-18, 4, 10);
    ellipse(x+11, y-18, 4, 10);
  }
  if(x1<-900&&x2<-900&&x3<-900&&x4<-900&&x5<-900){
    fill(0,255,0);
    textSize(75);
    text("Congratulations!!",-300,0);
    fill(random(255), random(255), random(255));
    arc(x, y, 300, 300, 0.052, 5.76);
    fill(255);
    ellipse(x+20, y-100, 30, 50);
    ellipse(x+70, y-100, 30, 50);
    fill(0);
    ellipse(x+20,y-120,15,15);
    ellipse(x+70,y-120,15,15);
    fill(40,150,255);
    arc(x+85,y+5,40,170,0,PI);
  }
}

