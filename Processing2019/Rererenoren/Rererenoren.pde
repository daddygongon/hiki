void setup() {
  size(1000, 950);
}


float x=500;
float y=775;
void draw() {
  background(#4EE31E);
  strokeWeight(30);//coat
  stroke(255);
  line(0, 250, 1000, 250);
  line(250, 15, 250, 250);
  line(750, 15, 750, 250);
  line(250, 15, 750, 15);
  strokeWeight(3);
  stroke(255);
  line(290, 20, 290, 250);
  line(320, 20, 320, 250);
  line(350, 20, 350, 250);
  line(380, 20, 380, 250);
  line(410, 20, 410, 250);
  line(440, 20, 440, 250);
  line(470, 20, 470, 250);
  line(500, 20, 500, 250);
  line(530, 20, 530, 250);
  line(560, 20, 560, 250);
  line(590, 20, 590, 250);
  line(620, 20, 620, 250);
  line(650, 20, 650, 250);
  line(680, 20, 680, 250);
  line(710, 20, 710, 250);
  line(250, 60, 750, 60);
  line(250, 90, 750, 90);
  line(250, 120, 750, 120);
  line(250, 150, 750, 150);
  line(250, 180, 750, 180);
  line(250, 210, 750, 210);
  line(250, 240, 750, 240);

  if  (keyPressed) {
    if (key=='d') {
      x+=4;
    } else if (key == 'a') {
      x-=4;
    } else if (key == 'w') {
      y-=4;
    } else if (key == 's') {
      y+=4;
    } else if (key=='r') {
      x=500;
      y=775;
    } else if (key=='e') {
      x+=2;
      y-=7;
    }
  }
  noStroke();//ball
  fill(#FFEE2C);
  ellipse(x, y, 50, 50);


  noStroke();//player1(red)
  fill(0);
  ellipse(500, 749, 38, 38);
  noStroke();
  fill(#EACC50);
  ellipse(445, 857, 13, 13);
  ellipse(555, 857, 13, 13);
  fill(0);
  rect(472, 943, 14, 7);
  rect(514, 943, 14, 7);
  fill(#EACC50);
  rect(472, 908, 14, 36);
  rect(514, 908, 14, 36);
  fill(255);
  rect(465, 859, 70, 49);
  fill(#4EE31E);
  triangle(500, 887, 493, 908, 507, 908);
  fill(#F01132);
  rect(465, 768, 70, 91);
  quad(465, 768, 465, 810, 451, 859, 440, 850);
  quad(535, 768, 535, 810, 547, 859, 558, 850);

  noStroke();//player2(red)
  fill(0);
  ellipse(850, 749, 38, 38);
  noStroke();
  fill(#EACC50);
  ellipse(795, 857, 13, 13);
  ellipse(905, 857, 13, 13);
  fill(0);
  rect(822, 943, 14, 7);
  rect(864, 943, 14, 7);
  fill(#EACC50);
  rect(822, 908, 14, 36);
  rect(864, 908, 14, 36);
  fill(255);
  rect(815, 859, 70, 49);
  fill(#4EE31E);
  triangle(850, 887, 843, 908, 857, 908);
  fill(#F01132);
  rect(815, 768, 70, 91);
  quad(815, 768, 815, 810, 801, 859, 790, 850);
  quad(885, 768, 885, 810, 897, 859, 908, 850);

  noStroke();//player3(red)
  fill(0);
  ellipse(850, 356, 38, 38);
  noStroke();
  fill(#EACC50);
  ellipse(795, 464, 13, 13);
  ellipse(905, 464, 13, 13);
  fill(0);
  rect(822, 550, 14, 7);
  rect(864, 550, 14, 7);
  fill(#EACC50);
  rect(822, 515, 14, 36);
  rect(864, 515, 14, 36);
  fill(255);
  rect(815, 466, 70, 49);
  fill(#4EE31E);
  triangle(850, 494, 843, 515, 857, 515);
  fill(#F01132);
  rect(815, 375, 70, 91);
  quad(815, 375, 815, 417, 801, 466, 790, 457);
  quad(885, 375, 885, 417, 897, 466, 908, 457);

  noStroke();//player4(red)
  fill(0);
  ellipse(350, 356, 38, 38);

  noStroke();
  fill(#EACC50);
  ellipse(295, 464, 13, 13);
  ellipse(405, 464, 13, 13);
  fill(0);
  rect(322, 550, 14, 7);
  rect(364, 550, 14, 7);
  fill(#EACC50);
  rect(322, 515, 14, 36);
  rect(364, 515, 14, 36);
  fill(255);
  rect(315, 466, 70, 49);
  fill(#4EE31E);
  triangle(350, 494, 343, 515, 357, 515);
  fill(#F01132);
  rect(315, 375, 70, 91);
  quad(315, 375, 315, 417, 301, 466, 290, 457);
  quad(385, 375, 385, 417, 397, 466, 408, 457);

  noStroke();//player1(bule)
  fill(0);
  ellipse(450, 479, 38, 38);
  fill(#EACC50);
  arc(450, 479, 38, 38, 0, PI);
  noStroke();
  fill(#EACC50);
  ellipse(395, 587, 13, 13);
  ellipse(505, 587, 13, 13);
  fill(0);
  rect(422, 673, 14, 7);
  rect(464, 673, 14, 7);
  fill(#EACC50);
  rect(422, 638, 14, 36);
  rect(464, 638, 14, 36);
  fill(255);
  rect(415, 589, 70, 49);
  fill(#4EE31E);
  triangle(450, 617, 443, 638, 457, 638);
  fill(#1125F0);
  rect(415, 498, 70, 91);
  quad(415, 498, 415, 540, 401, 589, 390, 580);
  quad(485, 498, 485, 540, 497, 589, 508, 580);

  noStroke();//player2(blue)
  fill(0);
  ellipse(350, 656, 38, 38);
  fill(#EACC50);
  arc(350, 656, 38, 38, 0, PI);
  noStroke();
  fill(#EACC50);
  ellipse(295, 764, 13, 13);
  ellipse(405, 764, 13, 13);
  fill(0);
  rect(322, 850, 14, 7);
  rect(364, 850, 14, 7);
  fill(#EACC50);
  rect(322, 815, 14, 36);
  rect(364, 815, 14, 36);
  fill(255);
  rect(315, 766, 70, 49);
  fill(#4EE31E);
  triangle(350, 794, 343, 815, 357, 815);
  fill(#1125F0);
  rect(315, 675, 70, 91);
  quad(315, 675, 315, 717, 301, 766, 290, 757);
  quad(385, 675, 385, 717, 397, 766, 408, 757);

  noStroke();//player3(bule)
  fill(0);
  ellipse(650, 479, 38, 38);
  fill(#EACC50);
  arc(650, 479, 38, 38, 0, PI);
  noStroke();
  fill(#EACC50);
  ellipse(595, 587, 13, 13);
  ellipse(705, 587, 13, 13);
  fill(0);
  rect(622, 673, 14, 7);
  rect(664, 673, 14, 7);
  fill(#EACC50);
  rect(622, 638, 14, 36);
  rect(664, 638, 14, 36);
  fill(255);
  rect(615, 589, 70, 49);
  fill(#4EE31E);
  triangle(650, 617, 643, 638, 657, 638);
  fill(#1125F0);
  rect(615, 498, 70, 91);
  quad(615, 498, 615, 540, 601, 589, 590, 580);
  quad(685, 498, 685, 540, 697, 589, 708, 580);

  noStroke();//kiper
  fill(0);
  ellipse(500, 56, 38, 38);
  fill(#EACC50);
  arc(500, 56, 38, 38, 0, PI);
  noStroke();
  fill(#EACC50);
  ellipse(445, 164, 13, 13);
  ellipse(555, 164, 13, 13);
  fill(0);
  rect(472, 250, 14, 7);
  rect(514, 250, 14, 7);
  fill(#EACC50);
  rect(472, 215, 14, 36);
  rect(514, 215, 14, 36);
  fill(255);
  rect(465, 166, 70, 49);
  fill(#4EE31E);
  triangle(500, 194, 493, 215, 507, 215);
  fill(#F8FC0F);
  rect(465, 75, 70, 91);
  quad(465, 75, 465, 117, 451, 166, 440, 157);
  quad(535, 75, 535, 117, 547, 166, 558, 157
    );
 if ((x>815 && x<920 && y<950 && y>730)) {
    fill(#29FFFD);
    textSize(80);
    textAlign(CENTER, CENTER);
    text("GOOD!", width/2, 300);
  }
  if ((x>815 && x<920 && y<529 && y>318)) {
    
    fill(0);
    rect(0, 0, 1000, 1000);

    fill(#D61639);
    textSize(200);
    textAlign(CENTER, CENTER);
    text("OFFSIDE", width/2, height/2);
    textSize(80);
    text("PUSH:R", width/2, 750);
  }
  if ((x>315 && x<385 && y<529 && y>318)) {
    fill(0);
    rect(0, 0, 1000, 1000);

    fill(#D61639);
    textSize(200);
    textAlign(CENTER, CENTER);
    text("OFFSIDE", width/2, height/2);
    textSize(80);
    text("PUSH:R", width/2, 750);
  }
  if ((x>315 && x<385 && y<857 && y>675)) {
    fill(0);
    rect(0, 0, 1000, 1000);
    fill(#D61639);
    textSize(130);
    textAlign(CENTER, CENTER);
    text("DEFENCE", width/2, height/2);
    textSize(80);
    text("PUSH:R", width/2, 750);
  }
  if ((x>415 && x<485 && y<680 && y>498)) {
    fill(0);
    rect(0, 0, 1000, 1000);

    fill(#D61639);
    textSize(130);
    textAlign(CENTER, CENTER);
    text("DEFENCE", width/2, height/2);
    textSize(80);
    text("PUSH:R", width/2, 750);
  }
  if ((x>615 && x<685 && y<680 && y>498)) {
    fill(0);
    rect(0, 0, 1000, 1000);

    fill(#D61639);
    textSize(130);
    textAlign(CENTER, CENTER);
    text("DEFENCE", width/2, height/2);
    textSize(80);
    text("PUSH:R", width/2, 750);
  }
  if ((x>280 && x<720 && y<250 && y>30)) {
    fill(#3B68EA);
    rect(0, 0, 1000, 1000);

    fill(#ECFA58);
    textSize(200);
    textAlign(CENTER, CENTER);
    text("GOAL!!", width/2, height/2);
    textSize(80);
    text("PUSH:R", width/2, 750);


    if ((x>465 && x<535 && y<250 && y>30)) {
      fill(0);
      rect(0, 0, 1000, 1000);

      fill(#ECFA58);
      textSize(160);
      text("NO GOAL", width/2, 250);
      textAlign(CENTER, CENTER);
      text("KEEPER", width/2, height/2);
      textSize(80);
      text("PUSH:R", width/2, 750);
    
        if ((x>0 && x<250 && y<250 && y>0)) {
      fill(0);
      rect(0, 0, 1000, 1000);
        }
  }}
}
