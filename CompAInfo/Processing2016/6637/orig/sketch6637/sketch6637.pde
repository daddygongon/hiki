 int[] x,y,m,n,k,l,r,g,b;
 
 void setup(){
 x = new int[50]; y = new int[50];
 m = new int[50]; n = new int[50];
 k = new int[20]; l = new int[20];
 r = new int[50]; g = new int[50]; b = new int[50];
 size(400,400);
 frameRate(20);
 noStroke();
 }
  
 void draw(){
 int i;
 if(mousePressed){
background(255);
 }else{
   background(0);
 }
 for(i=0; i<50; ++i){
   x[i] = int(random(400)); y[i] = int(random(400));
   m[i] = int(random(400)); n[i] = int(random(400));
   r[i] = int(random(256)); g[i] = int(random(256)); b[i] = int(random(256));
   fill(r[i],0,b[i]);
   rect(n[i],m[i],1,x[i]/5);
   rect(m[i],n[i],3,3);
   triangle(y[i],x[i],1,1,5,5);
   triangle(400,1,y[i],x[i],398,2);
   }
 }