void setup(){
  size(1000, 1000);
  colorMode(HSB,100);
  background(99);
  frameRate(60);
  noCursor();
}



int n = 200;
int[] SF = new int[n];
int[] x = new int[n];
int[] y = new int[n];
int[] b = new int[n];
int[] SF2 = new int[n];
int[] a2a = new int[n];
int[] a2b = new int[n];
int[] b2 = new int[n];
int[] x2a = new int[n];
int[] x2b = new int[n];
int[] y2 = new int[n];
int[] SF3 = new int[n];
int[] x3 = new int[n];
int[] y3 = new int[n];
int[] b3 = new int[n];
float[] d1 = new float[n];
float[] d2 = new float[n];
float[] d3 = new float[n];
float[] d4 = new float[n];
int[] countlv1 = new int[n];
int[] countlv2xa = new int[n];
int[] countlv2xb = new int[n];
int[] countlv2y = new int[n];
int[] countlv3 = new int[n];
float[] ang = new float[n];
int r = 40;
int SFB1 = 0;
int SFB2 = 0;
int SFB3 = 0;
int LB = 0;
int i,point,CS;
float s;
int Lx = 1000;
int sizeU = 42;
int sizeD = 1000;
int sizeR = 1000;
int sizeL = 0;

void draw(){
    if(CS == 0){
        textAlign(CENTER);
        textSize(80);
        fill(0);
        text("click start",width/2,height/2);
        if(mousePressed){
            CS = 1;
        }
    }
    if(CS == 1){
  fade();
  LIFE();
  jiki();
  s += 1;
  if(Lx > 0){
    fill(0);
    textSize(20);
    textAlign(LEFT);
    text("SCORE: "+nf(point,4),5,40);
    textAlign(RIGHT);
    text("TIME: " +nf(s,3,0), width -5, 40);
    if(point <= 2000){
    textAlign(CENTER);
    text("LEVEL1 ", width/2, 40);
    }
    if(point > 2000 && point <= 20000){
    textAlign(CENTER);
    text("LEVEL2 ", width/2, 40);
    }
    if(point > 20000 && point <= 40000){
    textAlign(CENTER);
    text("LEVEL3 ", width/2, 40);
    }
    if(point > 35000){
    textAlign(CENTER);
    text("LEVEL4 ", width/2, 40);
    }
  }
  if(point >= 65000){
      CS = 3;
  }
    }
    if(CS == 2){
        gameover();
        if(mousePressed){
            retry();
            delay(60);
        }
    }
    if(CS == 3){
        gameclear();
        if(mousePressed){
            retry();
            delay(60);
        }
    }
}

void retry(){
    if((CS == 2) || (CS == 3)){
    for(i = 0; i < n; i ++){
        SF[i] = 0;
        x[i] = 0;
        y[i] = 0;
        b[i] = 0;
        SF2[i] = 0;
        a2a[i] = 0;
        a2b[i] = 0;
        b2[i] = 0;
        x2a[i] = 0;
        x2b[i] = 0;
        y2[i] = 0;
        SF3[i] = 0;
        x3[i] = 0;
        y3[i] = 0;
        b3[i] = 0;
        d1[i] = 0;
        d2[i] = 0;
        d3[i] = 0;
        d4[i] = 0;
        countlv1[i] = 0;
        countlv2xa[i] = 0;
        countlv2xb[i] = 0;
        countlv2y[i] = 0;
        countlv3[i] = 0;
        ang[i] = 0;
    }
    Lx = width;
    s = 0;
    point = 0;
    CS = 1;
    noCursor();
    }
}

void tamalv1(){
  if(mousePressed && point <= 2000 || mousePressed && point >= 40000){
    if(SFB1 == 0){
      for(i = 0; i < n; i ++)
      {
        if(SF[i] == 0)
        {
          x[i] = mouseX;
          y[i] = mouseY;
          SF[i] = 1;
          break;
        }
      }
    SFB1 = 1;
    }
  }
  else{
    SFB1 = 0;
  }
  for(i = 0; i < n; i ++){
    if(SF[i] == 1){
      if(b[i] == 0){
        y[i] -= 4;
        if(y[i] <= sizeU + r/2){
          b[i] = 1;
          countlv1[i] = 1;
          point += 100;
      }
      }
      if(b[i] == 1){
        y[i] += 4;
        if(y[i] >= sizeD - r/2){
          b[i] = 0;
          point += 100;
        }
      }
      stroke(120, 160, 255);
      fill(255);
      ellipse(x[i], y[i], r, r);
    }
  }
}

void tamalv2(){
  if(mousePressed && point <= 20000 || mousePressed && point >= 40000){
    if(SFB2 == 0){
      for(i = 0; i < n; i ++)
      {
        if(SF2[i] == 0)
        {
          x2a[i] = mouseX;
          x2b[i] = mouseX;
          y2[i] = mouseY;
          SF2[i] = 1;
          break;
        }
      }
    SFB2 = 1;
    }
  }
  else{
    SFB2 = 0;
  }
  for(i = 0; i < n; i ++){
    if(SF2[i] == 1){
        if(a2a[i] == 0){
            x2a[i] += 2;
            if(x2a[i] >= sizeR - r/2){
                a2a[i] = 1;
                countlv2xa[i] = 1;
                point += 100;
            }
        }
        if(a2a[i] == 1){
          x2a[i] -= 2;
          if(x2a[i] <= r/2){
            a2a[i] = 0;
            point += 100;
          }
        }
        if(a2b[i] == 0){
            x2b[i] -= 2;
            if(x2b[i] <= r/2){
                a2b[i] = 1;
                countlv2xb[i] = 1;
                point += 100;
            }
        }
        if(a2b[i] == 1){
          x2b[i] += 2;
          if(x2b[i] >= sizeR - r/2){
            a2b[i] = 0;
            point += 100;
          }
        }   
      if(b2[i] == 0){
        y2[i] -= 7;
        if(y2[i] <= sizeU + r/2){
          b2[i] = 1;
          countlv2y[i] = 1;
          point += 100;
      }
      }
      if(b2[i] == 1){
        y2[i] += 7;
        if(y2[i] >= sizeD){
          b2[i] = 0;
          point += 100;
        }
      }
      stroke(60, 160, 255);
      fill(255);
      ellipse(x2a[i], y2[i], r, r);
      ellipse(x2b[i], y2[i], r, r);
    }
  }
}

void tamalv3(){
  if(mousePressed){
    if(SFB3 == 0){
      for(i = 0; i < n; i ++)
      {
        if(SF3[i] == 0)
        {
          x3[i] = mouseX;
          y3[i] = mouseY;
          SF3[i] = 1;
          break;
        }
      }
    SFB3 = 1;
    }
  }
  else{
    SFB3 = 0;
  }
  for(i = 0; i < n; i ++){
    if(SF3[i] == 1){
      if(b3[i] == 0){
        y3[i] -= 7;
        if(y3[i] <= sizeU + r/2){
          b3[i] = 1;
          countlv3[i] = 1;
          point += 100;
      }
      }
      if(b3[i] == 1){
        ang[i] = atan2(mouseY - y3[i], mouseX - x3[i]);
          x3[i] += 5*cos(ang[i]);
          y3[i] += 5*sin(ang[i]);
      }
      stroke(30, 160, 255);
      fill(255);
      ellipse(x3[i], y3[i], r, r);
    }
  }
}


void jiki(){
  rectMode(CENTER);
  fill(0);
  rect(mouseX, mouseY, 20, 20);
    if(point >= 0 && point < 2000){
      tamalv1();
    }
    tamalv1();
    if(point >= 2000 && point < 20000){
      tamalv1();
      tamalv2();
    }
    if(point >= 20000){
        tamalv1();
        tamalv2();
        tamalv3();
    }
  for(i = 0; i < n; i ++){
    d1[i] = dist(mouseX, mouseY, x[i], y[i]);
        if(d1[i] <= 13 && d1[i] >= 0 && countlv1[i] == 1){
      CS = 2;
    }
  }
  for(i = 0; i < n; i ++){
    d2[i] = dist(mouseX, mouseY, x2a[i], y2[i]);
    if(d2[i] <= 13 && d2[i] >= 0 && countlv2xa[i] == 1 && countlv2y[i] == 1){
      CS = 2;
    }
  }
  for(i = 0; i < n; i ++){
    d3[i] = dist(mouseX, mouseY, x2b[i], y2[i]);
    if(d3[i] <= 13 && d3[i] >= 0 && countlv2xb[i] == 1 && countlv2y[i] == 1){
      CS = 2;
    }
  }
  for(i = 0; i < n; i ++){
    d4[i] = dist(mouseX, mouseY, x3[i], y3[i]);
    if(d4[i] <= 6 && d3[i] >= 0 && countlv3[i] == 1){
      CS = 2;
    }
  }
}

void LIFE(){
  rectMode(CORNER);
  fill(255,0,255);
  rect(0, 0, width, 42);
  Lx -= 1.5;
  if(mousePressed && Lx > 0){
    if(LB == 0){
    if(Lx + 20 <= width){
    Lx += 80;
    }else if(Lx + 40 > width){
      Lx = width;
    }
    LB = 1;
  }
  }else {
    LB = 0;
  }
  fill(40, 100, 255);
  rect(0, 0, Lx, 20);
  if(Lx <= 0){
    CS = 2;
  }
}

void gameover(){
    cursor();
    fill(0);
    rectMode(CENTER);
    rect(width/2, height/2, width, height);
    fill(250, 100, 255);
    textAlign(CENTER);
    textSize(80);
    text("GAME OVER",width/2,height/2 - 70);
    textSize(40);
    text("TIME: " +nf(s,3,0), width/2, height/2);
    text("SCORE: "+nf(point,4),width/2,height/2 + 50);
}

void gameclear(){
    cursor();
    textAlign(CENTER);
    rectMode(CENTER);
    fill(0);
    rect(width/2, height/2, width, height);
    textSize(80);
    fill(255,0,255);
    text("gameclear!",width/2,height/2 - 70);
    textSize(40);
    text("TIME: " +nf(s,3,0), width/2, height/2);
}


  
void fade(){
  fill(99,63);
  rectMode(CENTER);
  rect(width/2, height/2, width, height);
}

