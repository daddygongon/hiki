
int columns=15; 
int rows = columns; 
float gap, theta, theta2; 
color[] palette = { 
  #BD1500, #E95F02, #F8CA40, #8A9B0F 
}; 
color bg = #750A7D; 
color[] palette2 = {
  20,30,40,50
};

void setup() { 
  size(500, 500); 
  strokeWeight(20); 
  gap=width/columns; 
  
} 

void draw() { 
  background(bg); 
  float theta2=PI/6; 
  for (int j=0; j<rows; j++) { 
  stroke(palette[j%palette.length], 300); 
  fill(palette[j%palette.length], 200); 
  theta2 += (TWO_PI/12); 
  float offSetY = map(sin(theta2), -1, 1, 0, TWO_PI); 
  for (int i=0; i<columns; i++) {  
      float offSetX = (TWO_PI/rows*i); 
      float x = (.5+i)*gap; 
      float y = (.5+j)*gap; 
      float sz = map(sin(theta+offSetX+offSetY), -1, 1, 5, gap*1.5);
      
      ellipse(x, y, sz, sz); 
      ellipse(y ,x, sz, sz);
      
} 
 } 

  theta -= .0523;  
} 
 

