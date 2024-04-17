int x=250;
int y=400;
int z=x + 325;
float direction = 1;
float speed = 2;

void setup() {
  size(1000, 1500);
   
}


int a=0;
int b=0;

void draw() {
  background(#B5E3DD);
 

  
  //body
noStroke()  ;
    fill(#D6AD54);
    beginShape();
    vertex(150, 200);
    vertex(150, 575);
    vertex(100, 650);
    vertex(175, 950);
    vertex(100, 1100);
    vertex(100, 1250);
    vertex(75, 1325);
    vertex(100, 1400);
    vertex(250, 1400);
    vertex(275, 1325);
    vertex(250, 1250);
    vertex(250, 1100);
    vertex(275, 975);
    vertex(350, 1250);
    vertex(650, 1250);
    vertex(725, 975);
    vertex(750, 1100);
    vertex(750, 1250);
    vertex(725, 1325);
    vertex(750, 1400);
    vertex(900, 1400);
    vertex(925, 1325);
    vertex(900, 1250);
    vertex(900, 1100);
    vertex(825, 950);
    vertex(900, 650);
    vertex(850, 575);
    vertex(850, 200);
    vertex(150, 200);
    endShape();
  

  noStroke();
  fill(#FCFCFA);
  beginShape();
  vertex(150, 575);
  vertex(100, 650);
  vertex(175, 950);
  vertex(825, 950);
  vertex(900, 650);
  vertex(850, 575);
  endShape();



  //face

  //hair
  stroke(1);
  strokeWeight(6);
  line(500, 50, 500, 200);
  line(450, 75, 500, 200);
  line(550, 75, 500, 200);

  //megane
  strokeWeight(6);
  line(150, 450, 250, 450);

  //mouth
  stroke(1);
  strokeWeight(6);
  beginShape();
  vertex(450, 675);
  vertex(550, 750);
  vertex(500, 780);
  vertex(550, 825);
  vertex(450, 875);
  endShape();

 


  //nose
  fill(#F7550A);
  ellipse(500, 600, 150, 100);  

  //cheak
  fill(#FFBB4D);
  ellipse(300, 625, 100, 100);  
  ellipse(700, 625, 100, 100);  

  //eye sotogawa
  stroke(1);
  strokeWeight(12);
  strokeJoin(ROUND);
  fill(#FAF9F7);
  rect(250, 350, 175, 200);//eye sotogawa left
  rect(575, 350, 175, 200);//eye sotogawa right
  strokeWeight(2);
  fill(#211D1B);
  
  //left hitomi
  x += speed*direction;
  if (x > 350 ) {
    direction = -direction;
  }
  if (x < 250){
    direction= -direction;
  }
  if (direction == 1) {
    rect(x, 400, 75, 100);
  }
  if (direction == -1){
    rect(x, 400, 75, 100);
  }

//right hitomi
 x += speed*direction;
  if (x+325 > 750 ) {
    direction = -direction;
  }
  if (x+325 < 575){
    direction= -direction;
  }
  if (direction == 1) {
    rect(x+325, 400, 75, 100);
  }
  if (direction == -1){
    rect(x+325, 400, 75, 100);
  }

  //megane
  strokeWeight(6);
  line(100, 450, 250, 450);
  line(425, 450, 575, 450);
  line(750, 450, 900, 450);



  //legs
  noStroke();
  fill(#211D1B);
  ellipse(400, 1300, 200, 125);
  ellipse(600, 1300, 200, 125);

  //tail


  //sweat
  fill(#A1F6FC);
  a += 1.5;
  if (a>400) a =0;
  ellipse(200, 650+a, 40, 75);

  fill(#A1F6FC);
  a += 1.5;
  if (y+a>850) a =0;
  ellipse(750, 750+a, 40, 75);

  fill(#A1F6FC);
  a += 1.5;
  if (a>200) a =0;
  ellipse(775, 200+a, 40, 75);
  
  //UFO
 
   b += 20;
  if(b>width) b=0;
  stroke(0.2);
  fill(#6753DE);
  arc(b+50,50,60,60,PI,TWO_PI);
 fill(#C1C0C6);
 ellipse(b+50,60,120,30);
 fill(#F0E511);
 ellipse(b+50,65,25,25);
}
