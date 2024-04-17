float x1, y1, x2, y2, x3, y3;
int Level, PressCount, i, z;

float[ ] snowx = new float [ 30 ];
float[ ] snowy = new float [ 30 ];
float[ ] snowv = new float [ 30 ];

void setup() {
  size(1080, 480);
  x1 = 50;
  y1 = 150;
  x2 = 50;
  y2 = 390;
  x3 = 50;
  y3 = 630;
  PressCount = 0;
  for (i = 0; i < 30; i++) {
    snowv[ i ] = 0.5;
  }

  for (i=0; i<30; i++) {
    snowx[ i ] = random( width ) ;
  }
  for (z=0; z<30; z++) {
    snowy[ z ] = random( height ) ;
  }
}

void draw() {
  if (PressCount == 0) {
    LevelSelect();
  }
  if (PressCount >= 1) {
    MainGame();
  }
}

void backGround() {
  background(58, 255, 255);
  for (i = 0; i < 30; i++) {
    fill(255);
    noStroke();
    ellipse(snowx[ i ], snowy[ i ], 8, 8);
    snowy[ i ] += snowv[ i ];
    if (snowy[ i ] > height + 5) {
      snowy[ i ] = 0;
      snowv[ i ] = random(0.2, 0.7);
    }
  }
}

void LevelSelect() {
  backGround();
  fill(0);
  textSize(40);
  textAlign(LEFT);
  text("Select Level & Press Number\n", width/5, height/5);
  textSize(20);
  text("1.easy\n2.nomal\n3.hard", width/5, height/5*2);
  if (keyPressed) {
    if (key == '1') {
      Level = 1;
      PressCount++;
    }
    if (key == '2') {
      Level = 3;
      PressCount++;
    }
    if (key == '3') {
      Level = 5;
      PressCount++;
    }
    if (key == '5') {
      Level = 10;
      PressCount++;
    }
    println(Level);
  }
  x1 = 50;  //Reset user location
}

void MainGame() {
  backGround();
  //Play1erSnowMan
  fill(255);
  ellipse(x1, y1, 100, 100); //Body
  ellipse(x1, y1 - 70, 85, 85); //Head
  fill(0);
  //Wink
  if (frameCount%50==0) {
    line(x1 - 17.5, y1 - 80, x1 + 7.5, y1 - 80);
    line(x1 + 7.5, y1 - 80, x1 + 22.5, y1 - 80);
  } else {
    ellipse(x1 - 10, y1 - 80, 15, 25); //LeftEy1e
    ellipse(x1 + 15, y1 - 80, 15, 25); //RightEy1e
  }
  fill(255, 155, 30);
  triangle(x1 - 5, y1 - 62, x1 - 5, y1 - 46, x1 + 25, y1 - 51); //Nose
  //ComputerSnowMan
  fill(255);
  ellipse(x2, y2, 100, 100); //Body
  ellipse(x2, y2 - 70, 85, 85); //Head
  fill(0);
  //Wink
  if (frameCount%50==0) {
    line(x2 - 17.5, y2 - 80, x2 + 7.5, y2 - 80);
    line(x2 + 7.5, y2 - 80, x2 + 22.5, y2 - 80);
  } else {
    ellipse(x2 - 10, y2 - 80, 15, 25); //LeftEy1e
    ellipse(x2 + 15, y2 - 80, 15, 25); //RightEy1e
  }
  //Car
  if (Level == 5 || Level == 10) {
    fill(255, 0, 0);
    rect(x2-70, y2-10, 140, 70);
    fill(0);
    ellipse(x2-45, y2+60, 30, 30);
    ellipse(x2+45, y2+60, 30, 30);
  }
  fill(255, 155, 30);
  triangle(x2 - 5, y2 - 62, x2 - 5, y2 - 46, x2 + 25, y2 - 51); //Nose
  //Goal Tape
  strokeWeight(50);
  stroke(255);
  line(width, 0, width, height);
  strokeWeight(1);
  stroke(0);
  textAlign(CENTER);
  textSize(30);
  fill(0);
  text("G\nO\nA\nL", width-12, 170);
  textAlign(LEFT);

  x2 += Level;

  if (x1 >= 1030) {
    Level = 0;
    fill(0);
    textSize(40);
    text("!! You Win !!", width/3, height/2);
    textSize(30);
    text("e : Exit\nr : Restart", width/3, height/1.5);
    if (keyPressed) {
      if (key == 'e' || key == 'E') {
        exit();
      }
      if (key == 'r' || key == 'R') {
        setup();
      }
    }
  }
  if (x2 >= 1030) {
    Level = 0;
    fill(0);
    textSize(40);
    text("!! You Lose !!", width/3, height/2);
    textSize(30);
    text("e : Exit\nr : Restart", width/3, height/1.5);
    if (keyPressed) {
      if (key == 'e' || key == 'E') {
        exit();
      }
      if (key == 'r' || key == 'R') {
        setup();
      }
    }
  }
}

void keyReleased() {
  switch(Level) { 
  case 1:
    if (key == '1') {
      x1 += 30;
    }
    break;
  case 3:
    if (key == '2') {
      x1 += 30;
    }
    break;
  case 5:
    if (key == '3') {
      x1 += 30;
    }
    break;
  case 10:
    if (key == '5') {
      x1 += 30;
    }
  }
}