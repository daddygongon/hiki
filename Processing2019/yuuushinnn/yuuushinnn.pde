void setup() {
  size(2000, 1000);
  background(255);
}

float x=800;
float a=-400;
float b=0;
float c=-100;
float d=90;
float e=89;
float f=0;


void draw() {
  size(2000, 1000);
  background(255);

  //not anpanman1
  fill(#A21EE5);
  noStroke();
  rect (920+a, 100, 150, 200, 10);  

  fill(#FAF203);
  rect(920+a, 200, 150, 30);

  fill(#FAF203);
  ellipse(995+a, 150, 30, 30);

  fill(0);
  ellipse(990+a, 145, 5, 5);

  fill(0);
  ellipse(1000+a, 145, 5, 5);

  noFill();
  stroke(0);
  arc(995+a, 150, 20, 20, radians(45), radians(135));

  fill(#B25151);
  stroke(0);
  arc(965+a, 100, 60, 40, radians(0), radians(180));

  fill(#B25151);//belt
  stroke(0);
  arc(1030+a, 100, 60, 40, radians(0), radians(180));

  fill(255);
  rect(970+a, 200, 50, 30);

  fill(255, 255, 0);
  rect(980+a, 205, 30, 18);

  a=a+10;
  if (a<-1000)a=-a;
  if (a>1000)a=-a;




  //not anpanman2
  fill(#1CE534);
  noStroke();
  rect (920+b, 300, 150, 200, 10);  

  fill(#FAF203);
  rect(920+b, 400, 150, 30);

  fill(#FAF203);
  ellipse(995+b, 350, 30, 30);

  fill(0);
  ellipse(990+b, 345, 5, 5);

  fill(0);
  ellipse(1000+b, 345, 5, 5);

  noFill();
  stroke(0);
  arc(995+b, 350, 20, 20, radians(45), radians(135));

  fill(#B25151);
  stroke(0);
  arc(965+b, 300, 60, 40, radians(0), radians(180));

  fill(#B25151);//belt
  stroke(0);
  arc(1030+b, 300, 60, 40, radians(0), radians(180));

  fill(255);
  rect(970+b, 400, 50, 30);

  fill(255, 255, 0);
  rect(980+b, 405, 30, 18);

  b=b+10;
  if (b<-1000)b=-b;
  if (b>1000)b=-b;

  //not anpanman3
  fill(#192FE3);
  noStroke();
  rect (920+c, 500, 150, 200, 10);  

  fill(#FAF203);
  rect(920+c, 600, 150, 30);

  fill(#FAF203);
  ellipse(995+c, 550, 30, 30);

  fill(0);
  ellipse(990+c, 545, 5, 5);

  fill(0);
  ellipse(1000+c, 545, 5, 5);

  noFill();
  stroke(0);
  arc(995+c, 550, 20, 20, radians(45), radians(135));

  fill(#B25151);
  stroke(0);
  arc(965+c, 500, 60, 40, radians(0), radians(180));

  fill(#B25151);//belt
  stroke(0);
  arc(1030+c, 500, 60, 40, radians(0), radians(180));

  fill(255);
  rect(970+c, 600, 50, 30);

  fill(255, 255, 0);
  rect(980+c, 605, 30, 18);

  c=c+15;
  if (c<-1000)c=-c;
  if (c>1000)c=-c;

  //not anpanman4
  fill(#5F5D2A);
  noStroke();
  rect (920+d, 500, 150, 200, 10);  

  fill(#FAF203);
  rect(920+d, 600, 150, 30);

  fill(#FAF203);
  ellipse(995+d, 550, 30, 30);

  fill(0);
  ellipse(990+d, 545, 5, 5);

  fill(0);
  ellipse(1000+d, 545, 5, 5);

  noFill();
  stroke(0);
  arc(995+d, 550, 20, 20, radians(45), radians(135));

  fill(#B25151);
  stroke(0);
  arc(965+d, 500, 60, 40, radians(0), radians(180));

  fill(#B25151);//belt
  stroke(0);
  arc(1030+d, 500, 60, 40, radians(0), radians(180));

  fill(255);
  rect(970+d, 600, 50, 30);

  fill(255, 255, 0);
  rect(980+d, 605, 30, 18);

  d=d-20;
  if (d<-1000)d=-d;
  if (a>1000)d=-d;

  //real anpanman body
  fill(#FF0A0A);
  noStroke();
  rect (920+x, 700, 150, 200, 10);  

  fill(#FAF203);
  rect(920+x, 800, 150, 30);

  fill(#FAF203);
  ellipse(995+x, 750, 30, 30);

  fill(0);
  ellipse(990+x, 745, 5, 5);

  fill(0);
  ellipse(1000+x, 745, 5, 5);

  noFill();
  stroke(0);
  arc(995+x, 750, 20, 20, radians(45), radians(135));

  fill(#B25151);
  stroke(0);
  arc(965+x, 700, 60, 40, radians(0), radians(180));

  fill(#B25151);//belt
  stroke(0);
  arc(1030+x, 700, 60, 40, radians(0), radians(180));

  fill(255);
  rect(970+x, 800, 50, 30);

  fill(255, 255, 0);
  rect(980+x, 805, 30, 18);

  x=x+15;
  if (x<-800)x=-x;
  if (x>800)x=-x;

  //face
  if (keyPressed) {
    if (key=='s' ) {
      e=e+10;
    } else if (key=='a') {
      e=e-10;
    } else if (key=='z') {
      f=f+10;
    } else if (key=='w'){
      f=f-5;
  }
  }


  fill(#EF8F4A);
  ellipse(1000+e, -50+f, 200, 200);

  fill(255, 0, 0);//nose
  ellipse(1000+e, -40+f, 70, 60);

  fill(#FF5400);
  ellipse(940+e, -40+f, 50, 60);

  fill(#FF5400);
  ellipse(1060+e, -40+f, 50, 60);

  fill(255);
  rect(995+e, -45+f, 10, 10);

  fill(255);
  rect(940+e, -45+f, 10, 10);

  fill(255);
  rect(1050+e, -45+f, 10, 10);

  fill(0);//eye
  ellipse(970+e, -90+f, 20, 30);

  fill(0);
  ellipse(1030+e, -90+f, 20, 30);

  noFill();//mouse
  arc(1000+e, -90+f, 200, 200, radians(60), radians(120));



  //system
  if (((920+a<1000+e)&&(1000+e<1070+a))&&((200<100+f)&&(-250+f<300))) {
    size(2000, 1000);
  background(0);
  
  fill(255,0,0);
  textSize(80);
  text("He is not ANPANMAN",width/2,500);
  noLoop();
}
else if (((920+b<1000+e)&&(1000+e<1070+b))&&((400<100+f)&&(-250+f<500))) {
      size(2000, 1000);
  background(0);
  
  fill(255,0,0);
  textSize(80);
  text("He is not ANPANMAN",width/2,500);
  noLoop(); 
}
else if (((920+c<1000+e)&&(1000+e<1070+c))&&((600<100+f)&&(-250+f<600))) {
      size(2000, 1000);
  background(0);
  
  fill(255,0,0);
  textSize(80);
  text("He is not ANPANMAN",width/2,500);
  noLoop();

}
else if (((920+d<1000+e)&&(1000+e<1070+d))&&((600<100+f)&&(-250+f<600))) {
      size(2000, 1000);
  background(0);
  
  fill(255,0,0);
  textSize(80);
  text("He is not ANPANMAN",width/2,500);
  noLoop();

}else if (((920+x<1000+e)&&(1000+e<1070+d))&&((700<100+f)&&(-250+f<1200))) {
      size(2000, 1000);
  background(255);
    textSize(80);
  text("ANPANMAN got new face!!!!!!!!!",400,500);
  noLoop();
  }
}
