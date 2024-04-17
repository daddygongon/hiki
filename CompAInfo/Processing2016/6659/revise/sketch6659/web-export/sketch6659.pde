//The MIT License (MIT) 
//Copyright (c) <2016> <Koki Sudo>
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
//to deal in the Software without restriction, 
//including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, 
//and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
//INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
//IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
//DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
//ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


float x=random(width);
float y=random(height);

void setup() {
  size(960,640);
  noStroke();
}

void draw(){
  x=x+random(10);
  y=y+random(10);
  if (x >= width) { x = random(width); }
  if (y >= height) { y = random(height); }
  background(0);
  if(keyPressed){
    if((key== 'r') || (key=='R')){
      if (mouseButton == RIGHT){
        rect(x,height/2,random(20,200),random(20,200));
        fill(random(255), random(255),random(255));
      }
      if (mouseButton == LEFT){
        rect(width/2,y,random(20,200),random(20,200));
        fill(random(255), random(255),random(255));
      }
      if (mouseButton == CENTER){
        rect(random(width),random(height),random(20,200),random(20,200));
        fill(random(255), random(255),random(255));  
      }}}
      
  if(keyPressed){  
    if(key== 'e'){ 
      if (mouseButton == RIGHT){
        ellipse(x,height/2,random(20,200),random(20,200));
        fill(random(255), random(255),random(255));
      }
      if (mouseButton == LEFT){
        ellipse(width/2,y,random(20,200),random(20,200));
        fill(random(255), random(255),random(255));
      }
      if (mouseButton == CENTER){
        ellipse(random(width),random(height),random(20,200),random(20,200));
        fill(random(255), random(255),random(255));
      }}}
      
  if(keyPressed){
    if(key== 'a'){
      if(mousePressed){
        ellipse((x+y)/3,y,random(20,200),random(20,200));
        fill(random(255), random(255),random(255));
    }}}}
