float x, y ;
float a, o ;
float l, q ;
float speedX = 3;
float speedY = 5;
float speedA = 5;
float speedO = 7;
float speedL = 10;
float speedQ = 4;
int r = int(random(0, 255));
int g = int(random(0, 255));
int b = int(random(0, 255));
int m = int(random(0, 255));
int n = int(random(0, 255));
int p = int(random(0, 255));
int e = int(random(0, 255));
int k = int(random(0, 255));
int i = int(random(0, 255));
int z = color(random(0, 255));
int j = color(random(0, 255));
int v = color(random(0, 255));
int w = int(random(0,500));
int s = int(random(0,500));
void setup() {
    size(800,800);
    background(255);
    x = width/15;
    y = height/3;
    a =width/5;
    o =height/30;
    l =width/5;
    q =height/13;
    smooth();
    stroke(12);
}

void draw() {
    background(z,j,v);
    fill(r, g, b);
    ellipse(x, y, w,s);
    fill(m, n, p);
    ellipse(a, o,w,s);
    fill(e, k, i);
    ellipse(l, q, w,s);
    x += speedX;
    y += speedY;
    a +=speedA;
    o +=speedO;
    l +=speedL;
    q +=speedQ;
    if (x < 0 || x > width) {
        speedX *= -1;
        r = int(random(0, 255));
        g = int(random(0, 255));
        b = int(random(0, 255));
         w = int(random(5,300));
    }
    if (a < 0 || a > width) {
        speedA *= -1;
        m = int(random(0, 255));
        n = int(random(0, 255));
        p = int(random(0, 255));
        
    }
    if (l < 0 || l > width) {
        speedL *= -1;
        e = int(random(0, 255));
        k = int(random(0, 255));
        i = int(random(0, 255));
    }
   
    if (y < 0 || y > height) {
        speedY *= -1;
        r = int(random(0, 255));
        g = int(random(0, 255));
        b = int(random(0, 255));
        s = int(random(5,300));
    }
    if (o < 0 || o > height) {
        speedO *= -1;
        m = int(random(0, 255));
        n = int(random(0, 255));
        p = int(random(0, 255));
    }
    if (q < 0 || q > height) {
        speedQ *= -1;
        e = int(random(0, 255));
        k = int(random(0, 255));
        i = int(random(0, 255));
    }
if(frameCount%200==0){
    z=int(random(0,255));
    j=int(random(0,255));
    v=int(random(0,255));
}

}
