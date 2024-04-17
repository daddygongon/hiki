
void setup(){
  size(720,640);
  background(0);
  smooth();
  
}

void draw(){
fill(random(256));
  textSize(random(12,36));
  textAlign(CENTER);
  text(int(random(10)),random(width),random(height));
  
  fill(255);
strokeWeight(5);
translate(width/2,height/2);

ellipse(0,0,400,400);//rinnkaku

strokeWeight(1);
float seconds = 360/60 * second();
pushMatrix();
rotate(radians(seconds));
stroke(255,0,0);
line(0,0,0,-175);
popMatrix();//byousin

stroke(0);
strokeWeight(3);
float minutes=360/60 * minute();
pushMatrix();
rotate(radians(minutes));
line(0,0,0,-165);
popMatrix();//hunnsinn

strokeWeight(6);
float hours=360/12 * hour();
pushMatrix();
rotate(radians(hours));
line(0,0,0,-100);
popMatrix();//hutoiyatu

fill(0,0,255);
textSize(30);
text(12,0,-170);

fill(0,0,255);
textSize(30);
text(3,170,10);

fill(0,0,255);
textSize(30);
text(6,0,190);

fill(0,0,255);
textSize(30);
text(9,-170,10);
}
