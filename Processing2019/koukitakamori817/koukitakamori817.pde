void setup() {
  size(1000, 1000);
  background(#000203);
  strokeWeight(5);
  stroke(#FEF7FF);
  for (int i = 50; i <1000; i += 150) {
    line(i, 40, i, 800);       //tatesen
    ellipse(i, 850, 100, 100);  //sitanoen
  }
  for (int i =0; i < 20; i++) {
    int num = int(random(1000))%6;
    line(50+num*150,50+i*35, 200+num*150, 50+i*35);
    
  }
  
  int[] player;
  player = new int[7];  //yokosen
}

void draw(){
  strokeWeight(10);
  stroke(#0816FF);
  if(mouseButton == LEFT){
line(mouseX,mouseY,pmouseX,pmouseY);   //red line write
}
if(mouseButton== RIGHT){
   float r = random(0,255);
   float g = random(0,255);
   float b = random(0,255);
   fill(r,g,b);
   ellipse(mouseX, 850, 100, 100);  //tenmetusuruen
   }
   if (mouseButton == CENTER){
    for (int i = 50; i <1000; i += 150) {
      stroke(255);
      fill(255);
    ellipse(i, 850, 100, 100);  //sitanoen
  }
   }
}
