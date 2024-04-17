int x=0;
int y=0;
void setup() {
  size(480, 480);
  frameRate(30);
  background(255);
}
    
void draw() {
  stroke(mouseX, mouseY,0);
  line(x, 0, width - x, height);
  x=x+2;
  line(0, y, width, height - y);
  y=y+2;
  if(y>height){
  x=0;
  y=0;
  }
}



  
  
  

    
  

  

    