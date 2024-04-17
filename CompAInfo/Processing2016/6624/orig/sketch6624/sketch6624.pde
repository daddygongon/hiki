float rot=0;
int value = 0;
HScrollbar hs1, hs2,hs3;  // Two scrollbars


void setup() {
  size(1100, 680, P3D);
  frameRate(60);
  stroke(0);
 
  hs1 = new HScrollbar(20, 30, 200, 16, 16);
  hs2 = new HScrollbar(20, 90, 200, 16, 16);
 
}

void draw() {

  background(255);

  hs1.update();
  hs2.update();
  hs1.display();
  hs2.display();
  
  

  fill(0);
  textSize(20);
  text("Rotation speed", 15, 20);
  text("Rotation angle", 15, 78);
  text("Pless any key !!", 800, 150);

  translate(width/12, width/3.5);
  rotateX(rot);
  translate(width/2.5, height/2.5);   
  rotateY(radians(hs2.getPos()));    //Rotational angle
  fill(255);
  stroke(0);
  strokeWeight(3);
  hint(DISABLE_DEPTH_TEST);
  box(160, 160, 160);    
  rot += hs1.getPos()*0.0004; //Rotational speed
  //println(radians(hs2.getPos()));


  if (keyPressed == true) {//adds

    box(180, 180, 180);
    box(140, 140, 140);
    box(120, 120, 120);
    box(100, 100, 100);
    box(80, 80, 80);
    box(60, 60, 60);
    box(40, 40, 40);
    box(20, 20, 20);
  } else {
  }
}



class HScrollbar {
  int swidth, sheight;    
  float xpos, ypos;       
  float spos, newspos;    
  float sposMin, sposMax; 
  int loose;              
  boolean over;           
  boolean locked;
  float ratio;

  HScrollbar (float xp, float yp, int sw, int sh, int l) {
    swidth = sw;
    sheight = sh;
    int widthtoheight = sw - sh;
    ratio = (float)sw / (float)widthtoheight;
    xpos = xp;
    ypos = yp-sheight/2;
    spos = xpos + swidth/2 - sheight/2;
    newspos = spos;
    sposMin = xpos;
    sposMax = xpos + swidth - sheight;
    loose = l;
  }

  void update() {
    if (overEvent()) {
      over = true;
    } else {
      over = false;
    }
    if (mousePressed && over) {
      locked = true;
    }
    if (!mousePressed) {
      locked = false;
    }
    if (locked) {
      newspos = constrain(mouseX-sheight/2, sposMin, sposMax);
    }
    if (abs(newspos - spos) > 1) {
      spos = spos + (newspos-spos)/loose;
    }
  }

  float constrain(float val, float minv, float maxv) {
    return min(max(val, minv), maxv);
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth &&
      mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    fill(#747474);
    rect(xpos, ypos, swidth, sheight);
    if (over || locked) {
      fill(0, 0, 0);
    } else {
      fill(#000000);
    }
    rect(spos, ypos, sheight, sheight);
  }

  float getPos() {           // pos sitei
    return spos * ratio;
  }
}