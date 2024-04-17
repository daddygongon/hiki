int x = 600;
int y = 350;
int angle;

void setup(){
  size(1200,700,P3D);
  angle = 0;
  
}

void draw(){
  background(0);
  fill(random(255),random(255),random(255));
  ellipse(random(1000),random(1000),100,100);
  if(keyPressed){
    if(key == 'p'){
      arc(random(1000),random(1000),100,100,0.052,5.76);
    }
   ellipse(random(1000),random(1000),100,100);
    
  
   
  fill(random(255),random(255),random(255));
  if(keyPressed){ //&& (key == CODED)){
    if(key == 'q'){
      rect(random(1000),random(1000),100,100);
      rect(random(1000),random(1000),100,100);
    }else {
      ellipse(random(1000),random(1000),100,100);
      ellipse(random(1500),random(1500),100,100);
    }
  }
  
  translate(x,y);
  
  
  if(keyPressed){
    if(key == 'q'){
      lights();
  angle += 1;
  if(angle > 360)angle = 0;
  
  ambientLight(127,0,0);
  directionalLight(0,0,255,0,0,-1);
  //translate(mouseX,mouseY);
  rotateX(radians(-30));
  rotateY(radians(angle));
  box(100);
  if(mousePressed){
    box(random(500));
  }
    }else {
      sphere(50);
  if(mousePressed){
    sphere(random(200));
  }
    }
      
  }
      
  
  if(keyPressed){
    if(key == 'a'){
    x--;
  }else if (key =='d'){
    x++;
  }
}
if(keyPressed){
    if(key == 'w'){
    y--;
  }else if (key =='s'){
    y++;
  }
}
if (keyPressed && (key == CODED)){
    if(keyCode == LEFT){
      x--;
    } else if (keyCode == RIGHT){
      x++;
    }
    if (keyPressed && (key == CODED)){
    if(keyCode == UP){
      y--;
    } else if (keyCode == DOWN){
      y++;
    }
    }
    
  }
  
  
 
}
  
  }

