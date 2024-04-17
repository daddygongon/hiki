void setup() {
    size(1000, 500);
 frameRate(50);}
float x1=1000;
float y1=height/2;
float x2=1000;
float y2=height/2;
float x3=1000;
float y3=height/2;



void draw() {
    background(0);
    fill(0,0,255);
    ellipse(mouseX, mouseY, 50, 50);
    fill(255, 0, 0);
       
        {ellipse(x1, y1, 120, 120);
        x1 +=-13;
        if (x1<0) {
            x1=1000;
            y1=random(height-20);
        }
    }

    if (dist(mouseX, mouseY, x1, y1)<65) {
        fill(255);
        text("GAME OVER", 50, 280);
        println("GAMEOVER");
        noLoop();
    }

    {    
        ellipse(x2, y2, 80, 80);
        x2 +=-16;
        if (x2<0) {
            x2=1000;
            y2=random(height-40);
        }
    }

    if (dist(mouseX, mouseY, x2, y2)<45) {
        fill(255);
        text("GAME OVER", 50, 280);
        noLoop();
    }
    {
        ellipse(x3, y3, 100, 100);
        x3 +=-20;
        if (x3<0) {
            x3=1000;
            y3=random(height-50);
        }
    }
    if (dist(mouseX, mouseY, x3, y3)<55) {
        fill(255);
        text("GAME OVER", 50, 280);
        noLoop();
    }
}


