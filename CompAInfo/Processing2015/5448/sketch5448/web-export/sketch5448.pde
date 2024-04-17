int kakudo ,kakudo2;                             //pronounce to use kakudo and kakudo2 

void setup(){                                //setup
  size(700, 600, P3D);       
  fill(#F70740);
  frameRate(50);



}

void draw() {                                       //repeat the same thing



  background(128); 
  fill(#4DB965);
  rect(0,0,100,600);
  rect(200,0,100,600);
  rect(400,0,100,600);  
  rect(600,0,100,600);
  
  fill(#111211);              //#111211
  rect(100,0,100,600);
  rect(300,0,100,600);
  rect(500,0,100,600);


  kakudo += 1;                       //argument Y and X. plus 1 or 2 to kakudo and kakudo2
  kakudo2 += 2; 
  
  if(kakudo >= 360){                        //limit360°reverse0 from kakudo and kakudo2
    kakudo = 0;
  }



  if(kakudo2 >= 360){
    kakudo2 = 0; 
  } 



  translate(width/2, height/2);          //order to draw central


  rotateY(frameCount*PI/120);             //always kakudo and kakudo2 increase from count paragraph. So using it to turn X and Y
  rotateZ(radians(kakudo2));  
  fill(#8C36FF);
  sphere(120);
  noStroke();
  
  fill(#FF314C);
  box(200);

 


}                              //turn void draw()

