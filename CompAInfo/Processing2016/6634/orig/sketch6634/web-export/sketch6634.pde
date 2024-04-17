final int DIV=8; //
boolean isMoving=false;
final int OFFSET=(int)(0.5*360/DIV);
float angle=OFFSET;
final float RPS=1; //
float rotateAngle;
int stopCount;

void setup() {
    background(#6A2404);
    textAlign(CENTER, CENTER);
    textSize(48);
    size(500, 500);
}

void draw() {
    rotateAngle=RPS*360/frameRate;
    background(#6A2404);
    if (isMoving) {
        background(#6A2404);
        angle+=rotateAngle;
        angle=(int)angle%360;
        println(angle);
        if (stopCount>0) {//
            stopCount--;
            if (stopCount==0) { //
                isMoving=false;//
                //
              
            }
        }
    }
    translate(width/2, height/2);
    pushMatrix();
    rotate(radians(angle));
    float r=min(width, height)*0.9;
    {
        stroke(0);
        fill(#FCFFB4);
        stroke(#FF4C0A);
        ellipse(0, 0, r, r);
        
       fill(0);
        ellipse(0,0,0.05*r,0.05*r);
        strokeWeight(8);
        stroke(#FF4C0A);
        line(0, 0, 225, 0);
        line(0, 0, -225, 0);
        line(0, 0, 0, 225);
        line(0, 0, 0, -225);
        line(0, 0, 158, 158);
        line(0, 0, -158, 158);
        line(0, 0, 158, -158);
        line(0, 0, -158, -158);
    }
    {
        int a=0;
        fill(#6A2404);
        text( Integer.toString(a+1), r*0.8*sin(2*PI*(a+0.5)/DIV)/2, -r*0.8*cos(2*PI*(a+0.5)/DIV)/2);
        int b=1;
        text( Integer.toString(b+1), r*0.8*sin(2*PI*(b+0.5)/DIV)/2, -r*0.8*cos(2*PI*(b+0.5)/DIV)/2); 
        int c=2;
        text( Integer.toString(c+1), r*0.8*sin(2*PI*(c+0.5)/DIV)/2, -r*0.8*cos(2*PI*(c+0.5)/DIV)/2); 
        int d=3;
        text( Integer.toString(d+1), r*0.8*sin(2*PI*(d+0.5)/DIV)/2, -r*0.8*cos(2*PI*(d+0.5)/DIV)/2); 
        int e=4;
        text( Integer.toString(e+1), r*0.8*sin(2*PI*(e+0.5)/DIV)/2, -r*0.8*cos(2*PI*(e+0.5)/DIV)/2); 
        int f=5;
        text( Integer.toString(f+1), r*0.8*sin(2*PI*(f+0.5)/DIV)/2, -r*0.8*cos(2*PI*(f+0.5)/DIV)/2);
        int g=6;
        text( Integer.toString(g+1), r*0.8*sin(2*PI*(g+0.5)/DIV)/2, -r*0.8*cos(2*PI*(g+0.5)/DIV)/2); 
        int h=7;
        text( Integer.toString(h+1), r*0.8*sin(2*PI*(h+0.5)/DIV)/2, -r*0.8*cos(2*PI*(h+0.5)/DIV)/2); 

        fill(#F5C70C);
        popMatrix();
        stroke(#D87D3F);
        triangle(-30, -height/2, 30, -height/2, 0, -height/2+70);}
    }

    void mousePressed() {
        if (!isMoving) {
            isMoving=true;
        } else {
            stopCount = (int)frameRate; //
        }
    }
