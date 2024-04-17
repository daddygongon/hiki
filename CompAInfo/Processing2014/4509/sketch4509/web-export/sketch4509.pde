void setup() {
  size(600, 600, P3D);
}

void draw() {

  camera ( width/2, -1000, 0, width/2, height/2, 0, 1, 0, 0 );
  background(20, 10, 25);
  noStroke();

  //Sun
  translate(width/2, height/2, 0);
  fill(255, 100, 0);
  sphere(80);
  noFill();

  pushMatrix();//remain xy
  
    
  //prominence
  rotateX(frameCount*PI/20000);
  translate(80,10);
  fill(255,100,0);
  sphere(5);
  noFill();
  translate(-80, -10);
  rotateX(-frameCount*PI/20000); 
  
  rotateX(frameCount*PI/40000);
  translate(-80,20);
  fill(255,100,0);
  sphere(5);
  noFill();
  translate(80, -20);
  rotateX(-frameCount*PI/40000); 
  
  rotateX(frameCount*PI/1200);
  translate(38,42);
  fill(255,100,0);
  sphere(30);
  noFill();
  translate(-38, -42);
  rotateX(-frameCount*PI/1200);
  
  rotateX(frameCount*PI/1800);
  translate(45,35);
  fill(255,100,0);
  sphere(27);
  noFill();
  translate(-45, -35);
  rotateX(-frameCount*PI/1800);
  
  rotateY(frameCount*PI/2400);
  translate(0,80);
  fill(255,100,0);
  sphere(2);
  noFill();
  translate(0, -80);
  rotateY(-frameCount*PI/2400);
  
  rotateX(frameCount*PI/300);
  translate(78,2);
  fill(255,100,0);
  sphere(5);
  noFill();
  translate(-78, -2);
  rotateX(-frameCount*PI/300);
  
  rotateX(frameCount*PI/8000);
  translate(44,36);
  fill(255,100,0);
  sphere(20);
  noFill();
  translate(-44, -36);
  rotateX(-frameCount*PI/8000);

  //Mercury
  rotateY(frameCount*PI/100); 
  translate(100, 0 );
  fill(77, 88, 99);
  sphere(10);
  noFill();
  translate(-100, 0);
  rotateY(-frameCount*PI/100); 

  //Venus
  rotateY(frameCount*PI/200); 
  translate(150, 0);
  fill(250, 160, 0);
  sphere(20);
  noFill(); 
  translate(-150, 0);
  rotateY(-frameCount*PI/200);

  //Earth
  rotateY(frameCount*PI/280);
  translate(200, 0);
  fill(0, 100, 150);
  sphere(20);
  noFill();
  rotateY(-frameCount*PI/280);

  //moon
  rotateY(frameCount*PI/80);
  translate(22, 0 );
  fill(55, 66, 77);
  sphere(7);
  noFill();
  rotateY(-frameCount*PI/80);

  popMatrix();//back xy

  //Mars
  rotateY(frameCount*PI/600);
  translate(260, 0 );
  fill(200, 100, 50);
  sphere(12);
  noFill();
  translate(-260, 0);
  rotateY(-frameCount*PI/600);

  //Jupiter
  rotateY(frameCount*PI/1800); 
  translate(340, 0);
  fill(180, 120, 80);
  sphere(40);
  noFill(); 
  translate(-340, 0);
  rotateY(-frameCount*PI/1800);

  //Saturn
  rotateY(frameCount*PI/3000); 
  translate(440, 0);
  fill(180, 170, 80);
  sphere(38);
  noFill(); 
  translate(-440, 0);
  rotateY(-frameCount*PI/3000);

  //Uranus
  rotateY(frameCount*PI/5000); 
  translate(540, 0);
  fill(10, 0, 255);
  sphere(27);
  noFill(); 
  translate(-540, 0);
  rotateY(-frameCount*PI/5000);

  //Neptune
  rotateY(frameCount*PI/8000); 
  translate(640, 0);
  fill(50, 50, 200);
  sphere(25);
  noFill(); 
  translate(-640, 0);
  rotateY(-frameCount*PI/8000);
}


