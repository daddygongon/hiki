//RYouichiro Debuchi//
//Computer Graphics, Interactive Art Artist and Programmer of the Field of Graphics//
//Processing[BETA] sample program 9//
//written by Ryoichiro Debuchi 2007//

void setup(){
  size(400,400);
  background(-1);
}
int A=100,N=10;
float C=0.0, D=0;
color[] c = {
  #FF03B4, #FF03B4, #C703FF, #2303FF, #0361FF, #03E8FF, #03FF8F, #38FF03, #BFFF03, #FFE603
};
void draw(){
  //background(-1);
  fill(-1,30);
  noStroke();
  rect(0,0,width,height);
  C = 100*sin(radians(D));
float r =abs(40*sin(radians(D)))+8;
  noStroke();
  for(int e=0; e<N; e++){
    float x=width/2+A*cos(radians(e*360/N+C));
    float y=height/2+A*sin(radians(e*360/N+C));
    fill(c[e]);
    ellipse(x,y,r,r);
  }
  D+=2;
}