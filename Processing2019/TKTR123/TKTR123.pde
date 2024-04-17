int ranx = width / 2;
 int y = 0;
 int speed = 10;

 void setup(){
 size(500,400);
 background(255);
 ellipseMode(RADIUS);
 }

 void draw(){
 noStroke();
 frameRate(100);
 fill(255,255,255,30);
 rect(0,0,width,height);
 fill(50,50,250,255);
 if(y == 400) {
y = 0;
ranx = (int)random(10,490);

 }  

 ellipse(ranx, y, 2, 2);

 y += speed;
 
 noStroke();
 fill(204,204,204);
 ellipse(50,40,50,50);
 ellipse(100,40,50,50);
 ellipse(150,40,50,50);
 ellipse(200,40,50,50);
 ellipse(300,40,50,50);
 ellipse(350,40,50,50);
 ellipse(400,40,50,50);
 ellipse(450,40,50,50);
 ellipse(500,40,50,50);
 }
 
