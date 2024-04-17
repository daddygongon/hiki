void setup(){
   size(400,400);
   colorMode(HSB,100);
   background(99);
   frameRate(15);

   PFont font = createFont("Naiv-Fat", 42);
   textFont(font, 24);
}


void draw(){
   if(keyPressed){
     if(key == 'd'){
       background(99);
     } else {
        textAlign(CENTER);
        fill(random(50),100);
        text(key, random(width), random(height));
     }
   }
} 
