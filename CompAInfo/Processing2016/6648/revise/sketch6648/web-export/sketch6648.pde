// sketch_idea7.pde
// cc by Youhei Inoue,2016

void setup(){
  size(1000,700);
  fill(256,256,0);
}

void draw(){
  background(0,256,256);
fill(256,0,0);
for(int i=20;i<1000;i+=60){
  rect(i,0,10,500);
}

fill(0,0,256);
for(int i=20;i<1000;i+=60){
  rect(i+30,200,10,500);
}
  fill(0,256,0);
  rect(0,600,50,100);
  fill(200,100,0);
  textSize(20);
  text("Start",4,650);
  fill(0,256,0);
  rect(960,600,40,600);
  fill(200,100,0);
  textSize(15);
  text("Goal",964,650);
  fill(256,256,0);
  ellipse(mouseX,mouseY,10,10);
  for(int i=20;i<1000;i+=60){
  if(i-5<=mouseX&&mouseX<=i+15&&0<=mouseY&&mouseY<=505){
    background(256,0,0);
  }
  if(i+25<=mouseX&&mouseX<=i+45&&195<=mouseY&&mouseY<=700){
    background(256,0,0);
  }
  }
}
