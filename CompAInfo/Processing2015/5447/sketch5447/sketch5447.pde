float angle; 
float distance= 25; 
float focusX,focusY; 
float thirdBallRatio=2; 
PVector endPoints[] = new PVector[150]; 

void setup() { 
size(96,64); 
smooth(); 
for (int i=0; i<endPoints.length;i++){ 
float d=0; 
int x=0,y=0; 
while (d<5*distance/6 || d>distance) { 
x = int(random(90)); 
y =int(random(60)); 
d =dist(width/2,height/2,x,y); 
} 
endPoints[i] = new PVector(x,y); 

} 

for (int i=0; i<endPoints.length;i++){ 
print(int(endPoints[i].y)+","); 
} 
} 

void draw() { 
background(0); 
if(random(10)>9.5) { 
focusX= random(100); 
focusY = random(50); 
if(random(10)>9)thirdBallRatio = random(92,3); 
} 
noStroke(); 
angle +=0.02; 
fill(255,0,0); 


ellipse(map(focusX,0, 96,40,56),map(focusY,0,64,26,34),distance*2,distance*2); 
stroke(180,140,15); 
strokeWeight(0.05); 
pushMatrix(); 
translate(map(focusX,0, 96,40,56),map(focusY,0,64,26,34)); 
for(int i=0; i<endPoints.length;i++) { 
line(0,0,endPoints[i].x-48,endPoints[i].y-32); 
} 
noStroke(); 
popMatrix(); 

fill(200,0,0); 
ellipse(map(focusX,0, 96,38,58),map(focusY,0,64,24,36),distance*1,distance*1); 

fill(0); 
ellipse(map(focusX,0, 96,36,64),map(focusY,0,64,22,38),distance/thirdBallRatio,distance/thirdBallRatio);
 } 
