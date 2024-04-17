int eSize = 20;
int velocity = 5;
int x = 0; 

void setup(){size(700, 700);}
void draw(){{
 strokeWeight(2);
fill(#F2310F);
ellipse(350, 750, 440, 400);
fill(#863426);
strokeWeight(0);
arc(350, 640, 390, 170, radians(0), radians(360));
fill(#F2310F);
triangle(250, 700, 450, 700, 350, 650);
strokeWeight(0);
fill(#FFC981);
ellipse(350, 350, 600, 600);
fill(#FF4A08);
strokeWeight(1);
ellipse(220, 370, 180, 190);
ellipse(480, 370, 180, 190);
strokeWeight(0);
ellipse(350, 370, 200, 180);
fill(#FCDFCC);
rect(310, 330, 43, 30);
strokeWeight(0);
fill(#030303);
ellipse(280, 220, 60, 100);
ellipse(420, 220, 60, 100);
strokeWeight(6);
{fill(#0D0D0D);
line(370, 190, 480, 140);
line(330, 190, 220, 140);}
strokeWeight(5);
fill(#030302);
line(220, 500, 480, 500);
strokeWeight(0);
fill(#F51111);
strokeWeight(3);
arc(350, 501, 150, 200, radians(0), radians(180));
fill(#050505);
ellipse(290, 665, 30, 30);
ellipse(410, 665, 30, 30);
fill(254, 255, 8);
rect(291, 660, 120, 10);
strokeWeight(0);
fill(#FFDEC4);
rect(170,320,39,24);
rect(490,300,37,24);}
{strokeWeight(20);
stroke(0);
if(mousePressed ==true){
stroke(#FF8E03);}
line(20,20,680,20);
line(20,25,20,height);
line(680,25,680,height);
strokeWeight(20);
 stroke(0);
  if(mousePressed ==true){
  stroke(#FF0303);
}line(0,10,width,10);
 line (10,0,10,height);
  line (690,0,690,height);
strokeWeight(20);
stroke(0);
if(mousePressed ==true){
stroke(#F5FA03);}
line(30,30,670,30);
line(30,30,30,height);
line(670,30,670,height);
}

  fill(255, 50); 
  rect(0, 0, width, height);
  fill(0);

 
  ellipse(x, height/2, 100, 100);
  x += velocity;
 if (x >= width) { 
    x = 0;}
}
