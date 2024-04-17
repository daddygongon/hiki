int[]a=new int[5];
int[]b=new int[5];
int[]u=new int[5];
int[]v=new int[5];

void setup(){
    size(640,400);
    
    println("asdr");
    
    //fill(255,182,193);
    a[0]=50;
    b[0]=0;
    u[0]=2;
    v[0]=7;
    
    a[1]=100;
    b[1]=0;
    u[1]=3;
    v[1]=10;
    
    a[2]=200;
    b[2]=400;
    u[2]=4;
    v[2]=8;
    
    a[3]=300;
    b[3]=150;
    u[3]=5;
    v[3]=5;
    
    a[4]=400;
    b[4]=70;
    u[4]=6;
    v[4]=5;
    
}

int x=40, y=340;
void draw(){
  
  background(58,187,222); //Background sky
  
      int i;
    for(i=0;i<5;i++){
      fill(255,0,0); //ball
        ellipse(a[i],b[i],20,20); //ball
        b[i]=b[i]+u[i]; a[i]=a[i]+v[i];
      
           if(b[i]>400||b[i]<0){
             u[i]=-u[i];
           }
          if (a[i]>640||a[i]<0) {
              v[i]=-v[i];
          }
             //ball crash
           if(abs(x-a[i])<12&&abs(y-b[i])<12){
            noLoop();
            //println("ASDF");
            }

    }
  

fill(109,234,76);
rect(0,350,640,50);  //under line

fill(178,92,22); 
rect(70,250,130,50);  //block1
rect(340,250,160,50); //block2
rect(40,150,80,50);   //block3
rect(190,150,160,50); //block4
rect(490,150,110,50); //block5
rect(110,50,100,50);  //block6
rect(340,50,160,50);  //block7


//fill(255,0,0);
  //background(204);
  fill(254,255,3);
  arc(x,y,20,20,radians(20),radians(330));  //character
  if(keyPressed&&(key==CODED)){
    if(keyCode==RIGHT){
      x+=3;
    }
    if(keyCode==LEFT){
      x-=3;
    }
    if(keyCode==DOWN){
      y+=3;
    }
    if(keyCode==UP){
      y-=3;
    }
    if(y>350&&keyCode==DOWN){ //underline
    noLoop();
    }
   //block 1
    if(x>70&&x<200&&y>250&&y<300&&keyCode==UP){ 
      noLoop();
    }
    if(x>70&&x<200&&y>250&&y<300&&keyCode==DOWN){
      noLoop();
    }
    if(x>70&&x<200&&y>250&&y<300&&keyCode==RIGHT){ 
      noLoop();
    }
    if(x>70&&x<200&&y>250&&y<300&&keyCode==LEFT){
      noLoop();
    }
    //block 2
    if(x>340&&x<500&&y>250&&y<300&&keyCode==UP){ 
      noLoop();
    }
    if(x>340&&x<500&&y>250&&y<300&&keyCode==DOWN){
      noLoop();
    }
    if(x>340&&x<500&&y>250&&y<300&&keyCode==RIGHT){ 
      noLoop();
    }
    if(x>340&&x<500&&y>250&&y<300&&keyCode==LEFT){
      noLoop();
    }
    //block 3
    if(x>40&&x<120&&y>150&&y<200&&keyCode==UP){ 
      noLoop();
    }
    if(x>40&&x<120&&y>150&&y<200&&keyCode==DOWN){
      noLoop();
    }
    if(x>40&&x<120&&y>150&&y<200&&keyCode==RIGHT){ 
      noLoop();
    }
    if(x>40&&x<120&&y>150&&y<200&&keyCode==LEFT){
      noLoop();
    }
    //block 4
    if(x>190&&x<350&&y>150&&y<200&&keyCode==UP){ 
      noLoop();
    }
    if(x>190&&x<350&&y>150&&y<200&&keyCode==DOWN){
      noLoop();
    }
    if(x>190&&x<350&&y>150&&y<200&&keyCode==RIGHT){ 
      noLoop();
    }
    if(x>190&&x<350&&y>150&&y<200&&keyCode==LEFT){
      noLoop();
    }
    //block 4
    if(x>190&&x<350&&y>150&&y<200&&keyCode==UP){ 
      noLoop();
    }
    if(x>190&&x<350&&y>150&&y<200&&keyCode==DOWN){
      noLoop();
    }
    if(x>190&&x<350&&y>150&&y<200&&keyCode==RIGHT){ 
      noLoop();
    }
    if(x>190&&x<350&&y>150&&y<200&&keyCode==LEFT){
      noLoop();
    }
    //block 5
    if(x>490&&x<600&&y>150&&y<200&&keyCode==UP){ 
      noLoop();
    }
    if(x>490&&x<600&&y>150&&y<200&&keyCode==DOWN){
      noLoop();
    }
    if(x>490&&x<600&&y>150&&y<200&&keyCode==RIGHT){ 
      noLoop();
    }
    if(x>490&&x<600&&y>150&&y<200&&keyCode==LEFT){
      noLoop();
    }
    //block 6
    if(x>110&&x<210&&y>50&&y<100&&keyCode==UP){ 
      noLoop();
    }
    if(x>110&&x<210&&y>50&&y<100&&keyCode==DOWN){
      noLoop();
    }
    if(x>110&&x<210&&y>50&&y<100&&keyCode==RIGHT){ 
      noLoop();
    }
    if(x>110&&x<210&&y>50&&y<100&&keyCode==LEFT){
      noLoop();
    }
    //block 7
    if(x>340&&x<500&&y>50&&y<100&&keyCode==UP){ 
      noLoop();
    }
    if(x>340&&x<500&&y>50&&y<100&&keyCode==DOWN){
      noLoop();
    }
    if(x>340&&x<500&&y>50&&y<100&&keyCode==RIGHT){ 
      noLoop();
    }
    if(x>340&&x<500&&y>50&&y<100&&keyCode==LEFT){
      noLoop();
    }   
    if(x<0&&keyCode==LEFT){
        noLoop();
    }
    if(x>640&&keyCode==RIGHT){
        noLoop();
    }
    if(y<0&&keyCode==UP){
        noLoop();
    }
    
  }
}

void keyPressed(){
    if(key=='a'){
      loop();
    }  
}
