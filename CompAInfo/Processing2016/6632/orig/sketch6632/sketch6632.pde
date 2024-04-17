int time=0;
int snakesize=10;
int[] snakex=new int[65535];         //copy
int[] snakey=new int[65535];         //copy
int eye1x=snakex[1]+15;
int eye1y=snakey[1]+5;
int eye2x=snakex[1]+15;
int eye2y=snakey[1]+15;
int ballx=233;
int bally=233;
int[] bonusx=new int[1024];
int[] bonusy=new int[1024];
int bonustime=-1;
int bonuspoint=0;
int direction=90;                    //方向(角度)
int d=0;                             //難易度
boolean stopgame=false;
boolean drawball=false;
boolean standbyflag=true;

void setup() {
  background(255);
  size(600, 600);
  noStroke();
  textAlign(CENTER);
  ellipseMode(CORNER);
  for (int i=5; i>0; i--) {
    bonusx[i]=(round(random(1, 29)))*20;
    bonusy[i]=(round(random(1, 29)))*20;
  }
}

void draw() {
  if (stopgame) {
    //stop
  } else {
    if (standbyflag) {
      standby();
    } else {
      time+=1;
      if ((time%d)==0) {
        snakemove();
        cheak();
        drawhead();
        if ((snakesize-10)%30==10) {
          bonustime=25;
        } 
        if (bonustime<=0) {
          fill(#EA413B);
          ellipse(ballx, bally, 15, 15);
        } else {
          bonustime--;
          for (int i=5; i>0; i--) {
            fill(#5F00FA);
            ellipse(bonusx[i], bonusy[i], 15, 15);
          }
        }
      }
    }
  }
}

void standby() {
  background(255);
  snakesize=10;
  ballx=(round(random(1, 29)))*20;
  bally=(round(random(1, 29)))*20;
  snakex=new int[65535];
  snakey=new int[65535];
  direction=90;
  frameRate(1);
  textSize(40);
  fill(random(255), random(255), random(255));
  text("Hungry Snake", 300, 100);
  textSize(30);
  fill(0);
  textSize(30);
  text("Use   up down left right    to control", 300, 200);
  text("Easy mode:press 1", 300, 300);
  text("Normal mode:press 2", 300, 400);
  text("Hard mode:press 3", 300, 500);
}

void keyPressed() {
  //move
  if (keyCode==UP&&direction!=180) {
    direction=0;
  }
  if (keyCode==RIGHT&&direction!=270) {
    direction=90;
  }
  if (keyCode==DOWN&&direction!=0) {
    direction=180;
  }
  if (keyCode==LEFT&&direction!=90) {
    direction=270;
  }
  //restart
  if (keyPressed) {
    if (key=='r'||key=='R') {
      standby();
      standbyflag=true;
      stopgame=true;
    }
  }
  //standby
  if (keyPressed) {
    if (key=='1') {
      d=10;
      standbyflag=false;
      stopgame=false;
      background(#8DB27F);
      frameRate(60);
    }
    if (key=='2') {
      d=5;
      standbyflag=false;
      stopgame=false;
      background(#8DB27F);
      frameRate(60);
    }
    if (key=='3') {
      d=3;
      standbyflag=false;
      stopgame=false;
      background(#8DB27F);
      frameRate(60);
    }
  }
}

void snakemove() {
  for (int i=snakesize; i>0; i--) {
    if (i!=1) {
      snakex[i]=snakex[i-1];
      snakey[i]=snakey[i-1];
    } else {
      switch(direction) {
      case 0:
        snakey[1]-=20;
        if (snakey[1]<0) {
          snakey[1]+=600;
        }
        eye1x=snakex[1]+3;
        eye1y=snakey[1]+5;
        eye2x=snakex[1]+12;
        eye2y=snakey[1]+5;
        break;

      case 90:
        snakex[1]+=20;
        if (snakex[1]>=600) {
          snakex[1]-=600;
        }
        eye1x=snakex[1]+10;
        eye1y=snakey[1]+3;
        eye2x=snakex[1]+10;
        eye2y=snakey[1]+12;
        break;

      case 180:
        snakey[1]+=20;
        if (snakey[1]>=600) {
          snakey[1]-=600;
        }
        eye1x=snakex[1]+12;
        eye1y=snakey[1]+10;
        eye2x=snakex[1]+3;
        eye2y=snakey[1]+10;
        break;

      case 270:
        snakex[1]-=20;
        if (snakex[1]<0) {
          snakex[1]+=600;
        }
        eye1x=snakex[1]+12;
        eye1y=snakey[1]+3;
        eye2x=snakex[1]+12;
        eye2y=snakey[1]+12;
        break;
      }
    }
  }
}

void drawhead() {
  if (stopgame==true) {
  } else {
    fill(#2E2D2D);
    rect(snakex[1], snakey[1], 20, 20);
    fill(255);
    ellipse(eye1x, eye1y, 5, 5);
    ellipse(eye2x, eye2y, 5, 5);
    fill(#2E2D2D);
    rect(snakex[2], snakey[2], 20, 20);
    fill(#8DB27F);
    rect(snakex[snakesize], snakey[snakesize], 20, 20);
  }
}

void cheak() {
  //body check
  for (int i=2; i<=snakesize; i++) {
    if (snakex[1]==snakex[i]&&snakey[1]==snakey[i]) {
      stopgame=true;
      gameover();
    }
  }
  //ball check
  if (snakex[1]==ballx&&snakey[1]==bally) {
    snakesize+=2;
    drawball=true;
    while (drawball) {
      ballx=(round(random(1, 29)))*20;
      bally=(round(random(1, 29)))*20;
      for (int j=1; j<snakesize; j++) {
        if (ballx==snakex[j]&&bally==snakey[j]) {
          drawball=true;
        } else {
          drawball=false;
          j=65535;
        }
      }
    }
  }
  //bonuscheak
  for (int j=5; j>0; j--) {
    if (snakex[1]==bonusx[j]&&snakey[1]==bonusy[j]) {
      bonuspoint+=1;
      drawball=true;
      while (drawball) {
        bonusx[j]=(round(random(1, 29)))*20;
        bonusy[j]=(round(random(1, 29)))*20;
        for (int k=1; k<snakesize; k++) {
          if (bonusx[j]==snakex[k]&&bonusy[j]==snakey[k]) {
            drawball=true;
          } else {
            drawball=false;
            k=65535;
          }
        }
      }
    }
  }
}

void bonusmode() {
  if (bonustime>0) {
    bonustime--;
  } else {
    bonus=false;
  }
}

void gameover() {
  fill(255);
  textSize(40);
  text("GAME OVER", 300, 250);
  text("Score:red "+str((snakesize-10)/2)+"*3+blue "+str(bonuspoint)+"="+str((snakesize-10)/2*3+bonuspoint), 300, 300);
  text("One more play ? Press R", 300, 350);
}