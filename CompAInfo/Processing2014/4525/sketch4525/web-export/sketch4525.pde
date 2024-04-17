void setup(){
  size(1000,1000);

smooth();
background(0);

mouseX=width/2; mouseY=height/2;
}

void draw() {
  if(mousePressed){
    float r = random(200);
 
 fill(0,random(255),0);
 
 
 ellipse(mouseX,mouseY,r,r);
  }else{
  
 float r = random(200);
 
 fill(0,0,random(255));
 
 ellipse(mouseX,mouseY,r,r);
}
}

