int time1=7000;
int time2=66000;
float x=0;
float y=499;
float z=0;
void setup(){
  size(500,600); 
  textAlign(CENTER);
}
void draw(){
  int currentTime=millis();
  background(255);
  if(currentTime>time2){
    x-=5;
    y+=5;
    z-=5;
    textSize(60);
    text("Now,Time Over",250,200);
  }else if(currentTime>time1){
    x+=0.07;
    y-=0.07;
    z+=0.07;
  }
  fill(0,255,0);
  rect(0,0,x,500);
  fill(#F20AA5);
  rect(y,0,z,500);
  line(0,500,500,500);
  strokeWeight(2);
  fill(0);
  textSize(40);
  text("b B ? q S h E Z l O   ?=[ ]",250,540);
  textSize(20);
  text("Push correct key before the walls close.",250,590);
  if(keyPressed){
    if(key=='L'){
      x-=500;
      y+=500;
      z-=500;
      textSize(80);
      text("That's right!!",250,300);      
    }
  }
}
  