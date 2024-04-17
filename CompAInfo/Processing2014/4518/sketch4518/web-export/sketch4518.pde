float t;
int r, l;

void setup() {
  size(480, 480);
  r=120;
  l=7;
}

void draw() {

  float x=0;
  float y=0;
  float p=0;
  float q=0;



  background(40, 255, 0);
  /*  stroke(200, 100, 0);
   strokeWeight(4);
   line(360, 240, 390, 240);
   line(90, 240, 120, 240);
   */


  //  bears body
  fill(130, 39, 22);

  beginShape();
  vertex(195, 175);
  vertex(285, 175);
  vertex(330, 220);
  vertex(370, 240);
  vertex(325, 240);
  vertex(295, 230);
  vertex(295, 320);
  vertex(185, 320);
  vertex(185, 230);
  vertex(160, 240);
  vertex(110, 240);
  vertex(150, 220);
  endShape(CLOSE);


  fill(255,0,0);
  ellipse(200,430,40,40);
  ellipse(280,430,40,40);
  
  fill(0, 0, 255);
  triangle(185, 320, 240, 350, 295, 320);
  quad(185, 320, 240, 350, 230, 430, 175, 425);
  quad(240, 350, 295, 320,  305, 425,250, 430);
  
  


  //  t-shirts
  fill(255, 255, 0);
  rect(195, 175, 90, 145);
  rect(185, 230, 10, 90);
  rect(285, 230, 10, 90);
  quad(195, 175, 195, 240, 175, 240, 175, 180);
  quad(285, 175, 285, 240, 305, 240, 305, 180);




  //  bear
  noStroke();
  fill(130, 39, 22);
  ellipse(240, 120, 120, 120);
  ellipse(190, 65, 50, 50);
  ellipse(290, 65, 50, 50);
  fill(255);
  ellipse(240, 150, 70, 60);
  stroke(0);
  strokeWeight(8);
  point(220, 100);
  point(260, 100);
  point(240, 120);
  strokeWeight(3);
  arc(240, 125, 50, 50, radians(60), radians(120));
  line(240, 120, 240, 145);

  //  bears body

  /*  beginShape();
   strokeJoin(ROUND);
   vertex(200,170);
   vertex(280,170);
   vertex(320,230);
   vertex(350,240);
   vertex(300,240);
   vertex(280,230);
   vertex(280,280);
   vertex(190,280);
   vertex(190,230);
   vertex(180,240);
   endShape();
   
   */

  //  pole
  //background(40, 255, 0);
  stroke(200, 100, 0);
  strokeWeight(10);
  line(360, 240, 370, 240);
  line(110, 240, 120, 240);





  //  moving
  fill(255);
  x=r*sin(t);
  y=r*cos(t);

  //  eyes
  stroke(0);
  strokeWeight(6);
  ellipse(220, 240, 20, 30);
  ellipse(260, 240, 20, 30);

  //  eyes
  strokeWeight(8);
  p=l*sin(t);
  q=l*cos(t);
  point(p+220, q+240);
  point(p+260, q+240);


  //  cord
  stroke(255);
  line(120, 240, x+240, y+240);
  line(360, 240, x+240, y+240);
  if (y+240>=240) {
    t+=0.15;
  }
  else {
    t+=0.05;
  }

  //  diabolo
  noStroke();
  fill(0);
  ellipse(x+240, y+240, 20, 20);
  fill(255, 150, 0);
  ellipse(x+240, y+240, 60, 60);
  fill(200);
  ellipse(x+240, y+240, 20, 20);
}


