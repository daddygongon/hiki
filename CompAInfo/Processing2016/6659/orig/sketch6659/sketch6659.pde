float x;
float y;
float easing = 0.2;


void setup() {
  size(960, 640); 
 }

void draw() { 
  if(keyPressed){
    if((key== 'r') || (key=='R')){
      
      float targetX = mouseX;
      float dx = targetX - x;
      x += dx * easing;
      
      float targetY = mouseY;
      float dy = targetY - y;
      y += dy * easing;
      
      if (mousePressed){
        fill(random(255), random(255),random(255));
      } else{
        fill(255);
      }
      float target = dist(mouseX,mouseY,pmouseX,pmouseY);
      rect(x, y, pmouseX/3, pmouseY/3);    
    }}
  
   if(keyPressed){
    if((key== 'e') || (key=='E')){
      float targetX = mouseX;
      float dx = targetX - x;
      x += dx * easing;
      
      float targetY = mouseY;
      float dy = targetY - y;
      y += dy * easing;
      
      if (mousePressed){
        fill(random(255), random(255),random(255));
      } else{
        fill(255);
      }
      float target = dist(mouseX,mouseY,pmouseX,pmouseY);
      ellipse(x, y, pmouseX/3, pmouseY/3);
  
 
}}}
  