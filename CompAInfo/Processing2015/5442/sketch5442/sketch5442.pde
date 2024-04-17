float[]x = new float[30];
float[]y = new float[30];
float[]dx = new float[30];
float[]dy = new float[30];
int h;
int r = 40;

void setup(){
  size(600,600);
  frameRate(100);
   for( int i=0; i<30;i++){
    x[i] = (float)random(r,width-r);
    y[i] = (float)random(r,height-r);
    dx[i] = (float)random(-5,6);
    dy[i] = (float)random(-5,6);
   }
  colorMode(HSB,360,100,100);
  fill(200,80,80);
  background(0);
  smooth();
}
void draw(){  
  fill(0,20);
  rect(0,0,width,height);
  fill(h%360,80,80);
  stroke(h%360,80,80);
  h++;
  for( int i=0; i<30;i++){
    ellipse(x[i],y[i],r,r);
    x[i] = x[i] + dx[i];
    y[i] = y[i] + dy[i];
    
  if( x[i] > width-r ||x[i]<0 ){
    dx[i] = -dx[i];
  }
  if( y[i] > height-r || y[i] < 0 ){
    dy[i] = -dy[i];
  }

  }
}
  
  
