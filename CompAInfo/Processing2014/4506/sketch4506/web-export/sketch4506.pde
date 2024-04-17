int[] x, y,lr;
 int[] r, g, b;
 int count = 0;
boolean flag = false;

void setup()
 {
 size(1000,600);

 x = new int[40];
 y = new int[40];
 lr = new int[40];
 r = new int[40];
 g = new int[40];
 b = new int[40];

 for(int i = 0; i < 40; ++i)
 {
 x[i] = int(random(30 + 32, 970 - 32));
 y[i] = int(random(70 + 32, 540 - 32));
 r[i] = int(random(256));
 g[i] = int(random(256));
 b[i] = int(random(256));
 lr[i] = int(random(2)) * 2-1;
 }
 }
 void draw()
 {

 field();
 ellipsedraw();

 if (mousePressed == true)
 {
 int wmouseX = mouseX;
 int wmouseY = mouseY;

 if (wmouseX > 970 - 10) {
 wmouseX = 970 - 10;
 } else if (wmouseX < 30 + 10) {
 wmouseX = 30 + 10;
 }
 if (wmouseY < 70 + 10) {
 wmouseY = 70 + 10;
 } else if (wmouseY > 540 - 10) {
 wmouseY = 540 - 10;
 }

color c = get(wmouseX, wmouseY); 
 if (c != -2105377 && c != -16777216 && flag == false) 
 {
 count++; 
 flag = true;
 }
 if (c == -2105377 && flag == true) 
 {
 flag = false;
 }
fill(RGB,random(0,255),random(0,255),random(222,255));
 ellipse(wmouseX, wmouseY, 20, 20);
 }
 }

 void field()
 {
 background(223);
 noFill(); 
 strokeWeight(3);
 rect(30, 70, 940, 470);
 fill(0);
 textSize(30);
 text(count, 35,580);
 textFont(createFont("HGPｺﾞｼｯｸM", 40));
 text("避け続けろ！！" ,400,50);
 }

 void ellipsedraw() 
 { 
 for(int i = 0; i < 25; ++i)
 {
 x[i] += lr[i];
 y[i] += lr[i];

 if (x[i] > 970 - 32) {
 lr[i] = -3;
 } else if (x[i] < 30 + 32) {
 lr[i] = 4;
 } else if (y[i] < 70 + 32) {
 lr[i] = 3;
 } else if (y[i] > 540 - 32) {
 lr[i] = -2;
 }
 fill(r[i], g[i], b[i]);
 ellipse(x[i], y[i], 65, 65);
 }
 if(count>3){
   textAlign(CENTER);
   textSize(50);
   text("GAME OVER",width/2,height/2);
 }
 }

