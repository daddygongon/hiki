float x=1000/8; //shot line
int y=600;
float ea, eb, ec, ed;
float eas=random(2, 5);
float ebs=random(2, 5);
float ecs=random(2, 5);
float eds=random(2, 5);
int ead=1;
int ebd=1;
int ecd=1;
int edd=1;
float ey=30;
float ra, rb, rc, rd;
int count;
float ly=601;
float ly2=601;
float ly3=601;
float ly4=601;
float ly5=601;
float ly6=601;
float ly7=601;

void setup() {
  background(150);
  size(1000, 650);

  ea=random(0, width);
  eb=random(0, width);
  ec=random(0, width);
  ed=random(0, width);
  ra=random(20, 30);
  rb=random(20, 30);
  rc=random(20, 30);
  rd=random(20, 30);

  count=0;
}

void draw() {
  background(150);

  strokeWeight(1);
  stroke(255);
  line(x, 0, x, height);
  line(x*2, 0, x*2, height);
  line(x*3, 0, x*3, height);
  line(x*4, 0, x*4, height);
  line(x*5, 0, x*5, height);
  line(x*6, 0, x*6, height);
  line(x*7, 0, x*7, height);

  ea=ea+(eas*ead);
  eb=eb+(ebs*ebd);
  ec=ec+(ecs*ecd);
  ed=ed+(eds*edd);

  noStroke();

  ellipseMode(RADIUS);
  fill(255, 0, 0);
  ellipse(ea, ey, ra, ra);
  if (ea>=width || ea<=0) { //Bounce
    ead*=-1;
  }

  fill(247, 255, 0);
  ellipse(eb, ey*2, rb, rb);
  if (eb>=width || eb<=0) {
    ebd*=-1;
  }

  fill(0, 255, 0);
  ellipse(ec, ey*3, rc, rc);
  if (ec>=width || ec<=0) {
    ecd*=-1;
  }

  fill(0, 0, 255);
  ellipse(ed, ey*4, rd, rd);
  if (ed>=width || ed<=0) {
    edd*=-1;
  }

  strokeWeight(4);
  if (keyPressed) {
    ly=ly-20;
    ly2=ly2-20;
    ly3=ly3-20;
    ly4=ly4-20;
    ly5=ly5-20;
    ly6=ly6-20;
    ly7=ly7-20;
    
    stroke(0);

    if (key=='a') {
      line(x, ly, x, ly+20);
    } else if (key=='s') {
      line(x*2, ly2, x*2, ly2+20);
    } else if (key=='d') {
      line(x*3, ly3, x*3, ly3+20);
    } else if (key=='f') {
      line(x*4, ly4, x*4, ly4+20);
    } else if (key=='j') {
      line(x*5, ly5, x*5, ly5+20);
    } else if (key=='k') {
      line(x*6, ly6, x*6, ly6+20);
    } else if (key=='l') {
      line(x*7, ly7, x*7, ly7+20);
    }
  }
  if (keyPressed==false) {
    ly=ly2=ly3=ly4=ly5=ly6=ly7=601;
  }

  float RA=ra*ra;
  float RB=rb*rb;
  float RC=rc*rc;
  float RD=rd*rd;

  if ((x-ea)*(x-ea)+(ly-ey)*(ly-ey)<=RA||(x*2-ea)*(x*2-ea)+(ly2-ey)*(ly2-ey)<=RA||(x*3-ea)*(x*3-ea)+(ly3-ey)*(ly3-ey)<=RA||(x*4-ea)*(x*4-ea)+(ly4-ey)*(ly4-ey)<=RA||(x*5-ea)*(x*5-ea)+(ly5-ey)*(ly5-ey)<=RA||(x*6-ea)*(x*6-ea)+(ly6-ey)*(ly6-ey)<=RA||(x*7-ea)*(x*7-ea)+(ly7-ey)*(ly7-ey)<=RA) {
    noStroke();
    fill(150);
    ellipse(ea, ey, ra, ra);
    ly=ly2=ly3=ly4=ly5=ly6=ly7=601;
    count=count+1;
  } 
  if ((x-eb)*(x-eb)+(ly*2-ey*2)*(ly*2-ey*2)<=RB||(x*2-eb)*(x*2-eb)+(ly2*2-ey*2)*(ly2*2-ey*2)<=RB||(x*3-eb)*(x*3-eb)+(ly3*2-ey*2)*(ly3*2-ey*2)<=RB||(x*4-eb)*(x*4-eb)+(ly4*2-ey*2)*(ly4*2-ey*2)<=RB||(x*5-eb)*(x*5-eb)+(ly5*2-ey*2)*(ly5*2-ey*2)<=RB||(x*6-eb)*(x*6-eb)+(ly6*2-ey*2)*(ly6*2-ey*2)<=RB||(x*7-eb)*(x*7-eb)+(ly7*2-ey*2)*(ly7*2-ey*2)<=RB) {
    noStroke();
    fill(150);
    ellipse(eb, ey*2, rb, rb);
    ly=ly2=ly3=ly4=ly5=ly6=ly7=601;
    count=count+1;
  } 
  if ((x-ec)*(x-ec)+(ly*3-ey*3)*(ly*3-ey*3)<=RC||(x*2-ec)*(x*2-ec)+(ly2*3-ey*3)*(ly2*3-ey*3)<=RC||(x*3-ec)*(x*3-ec)+(ly3*3-ey*3)*(ly3*3-ey*3)<=RC||(x*4-ec)*(x*4-ec)+(ly4*3-ey*3)*(ly4*3-ey*3)<=RC||(x*5-ec)*(x*5-ec)+(ly5*3-ey*3)*(ly5*3-ey*3)<=RC||(x*6-ec)*(x*6-ec)+(ly6*3-ey*3)*(ly6*3-ey*3)<=RC||(x*7-ec)*(x*7-ec)+(ly7*3-ey*3)*(ly7*3-ey*3)<=RC) {
    noStroke();
    fill(150);
    ellipse(ec, ey*3, rc, rc);
    ly=ly2=ly3=ly4=ly5=ly6=ly7=601;
    count=count+1;
  } 
  if ((x-ed)*(x-ed)+(ly*4-ey*4)*(ly*4-ey*4)<=RD||(x*2-ed)*(x*2-ed)+(ly2*4-ey*4)*(ly2*4-ey*4)<=RD||(x*3-ed)*(x*3-ed)+(ly3*4-ey*4)*(ly3*4-ey*4)<=RD||(x*4-ed)*(x*4-ed)+(ly4*4-ey*4)*(ly4*4-ey*4)<=RD||(x*5-ed)*(x*5-ed)+(ly5*4-ey*4)*(ly5*4-ey*4)<=RD||(x*6-ed)*(x*6-ed)+(ly6*4-ey*4)*(ly6*4-ey*4)<=RD||(x*7-ed)*(x*7-ed)+(ly7*4-ey*4)*(ly7*4-ey*4)<=RD) {
    noStroke();
    fill(150);
    ellipse(ed, ey*4, rd, rd);
    ly=ly2=ly3=ly4=ly5=ly6=ly7=601;
    count=count+1;
  }

  noStroke();
  fill(255, 185, 72);
  rectMode(CORNERS);
  rect(x-10, y, x+10, height);
  rect(x*2-10, y, x*2+10, height);
  rect(x*3-10, y, x*3+10, height);
  rect(x*4-10, y, x*4+10, height);
  rect(x*5-10, y, x*5+10, height);
  rect(x*6-10, y, x*6+10, height);
  rect(x*7-10, y, x*7+10, height);

  if (count>10) { //10counts=clear
    noLoop();
    textAlign(CENTER);
    textSize(100);
    fill(224,0,255);
    text("CLEAR", width/2, height/2);
  }
}

