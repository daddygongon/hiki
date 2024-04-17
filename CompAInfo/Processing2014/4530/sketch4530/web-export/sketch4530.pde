void setup() {
    size(1024, 768);
    background(160, 190, 255);
}

int A = 0;    // first click
int B = 0;    // clicked B times
int C = 0;    // last bridge Y
int D = 0;    // recent bridge Y
int E = 0;    // end
int F = 0;    // fail

int U = 0;    // upswitch <0...down, 1...up>

float H = 99999999;  // your highest(=smallest) score
float M = 0;  // milli-seconds


int R = 0;    // RESET ALL (EXCEPT HIGHEST SCORE)




void mouseReleased() {

  if((D > 280+31 && A == 0)             ||  (D < 768-280-1 && B == 10)             ||
     (D > C+58-(6*(B-1))  &&  A == 1)   ||  (D < C-58+(6*(B-1))  &&  A == 1)         )  
    { F = 1;
     textSize(42);
     fill(80, 10, 40);
     text("Click to retry.", 1024-350, 768-20);}    // fail


  if(A == 0) M = millis();
  
  
  if(A == 0) A = 1;  // first click
  
  if(F == 0) B = B + 1;  // bridges shorten and appears on the next place
  
  C = D;  // memorize mouseY


    
  if(F == 0 && B == 11 && H <= (millis()-M)){            // When you didn't get the highest score
    
    fill(40, 80, 0);
    textSize(24);
      text("Cleared!", 50, 768-100);
      text("Your clear time is " + ((millis()-M)/1000) + " seconds.", 50, 768-60);
    
    textSize(42);
    fill(80, 10, 40);
       text("Click to retry.", 1024-350, 768-20);

  }
   
   
  if(F == 0 && B == 11 && H > (millis()-M)){            // When you got the highest score
    
    fill(240, 120, 50);
    textSize(30);
      text("You got the HIGHSCORE!!!!! ", 50, 768-70);
      text("Your clear time is " + ((millis()-M)/1000) + " seconds.", 50, 768-40);
    
    textSize(42);
      fill(80, 10, 40);
      text("Click to retry.", 1024-350, 768-20);
    
    H = (millis()-M);
   
  }
   
   
    
  if(E == 1) R = 1;    // IF YOU CLICK AFTER A GAME END, IT WILL BE RESTARTED. 
  
  
}




void draw() {
  
  if(F == 0 && E == 0 && B < 11){
      
      if(U == 0){D = D + 3;}  //down
      else{D = D - 3;}  //up
      
      fill(160, 190, 255);
      stroke(160, 190, 255);
      strokeWeight(0);
      rectMode(CORNERS);
        rect(90*B +25, 0, 90*(B+1) +25, 768);
      
      fill(130);
      stroke(80);
      strokeWeight(1);
      rectMode(CENTER);
        rect(70+90*B, D, 89, 60-6*B);  // bridges

      if(D > 768-1)U = 1;
      if(D < 1)U = 0;
      

      if(H < 99999999){
        fill(220, 20, 50);
        textSize(24);
          text("[Your highscore is " + (H/1000) + " seconds]", 50, 768-160);

      }
      
      else{
        fill(20, 120, 50);
        textSize(24);
          text("Click and build a bridge over the river!", 50, 768-160);

        }
  
  
      fill(80, 0, 0);
      stroke(80, 0, 0);
      strokeWeight(1);
      rectMode(CORNERS);
        rect(0, 0, 40, 280);                 // left side
      
      
      fill(80, 0, 0);
      stroke(80, 0, 0);
      strokeWeight(1);
      rectMode(CORNERS);
        rect(1024, 768, 1024-40, 768-280);   // right side
        
  }
        
        
  if(F == 1 && E == 0){
        stroke(255, 0, 0);
        strokeWeight(1);
        fill(20, 240, 40);
          ellipse(1024/2, 768/2, 300, 300);
        stroke(255, 0, 0);
        strokeWeight(20);
          line(420, 300, 1024-420, 768-300);
          line(1024-420, 300, 420, 768-300);  // red cross (failed)

        E = 1;        
  }
  
  if(F == 0 && B == 11){
        fill(20, 240, 40);
        stroke(255, 0, 0);
        strokeWeight(1);
          ellipse(1024/2, 768/2, 300, 300);
        strokeWeight(20);
          ellipse(1024/2, 768/2, 220, 220);   // red circle (cleared)
          
        E = 1;
  }
  
  
  
  
  
  
  if(R == 1){                                // ---RESET---
    
      fill(160, 190, 255);
      stroke(160, 190, 255);
      rectMode(CORNERS);
        rect(0, 0, 1024, 768);               // BACKGROUND OVERWRITE


      A = 0; // RESET ALL THE VALUES
      B = 0;
      C = 0;
      D = 0;
      E = 0;
      F = 0;
      U = 0;
      
      M = 0; // RESET TIMER
      
      R = 0; // RESET END
      
  }


}



