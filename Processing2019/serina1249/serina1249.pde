int p, q;
float speed = 5.0;
int d;
int deg1 =0;
int deg2 =0;
int deg3 =0;
int deg4 =0;
int keyStat;


void setup() {

    strokeWeight(2);
    stroke(255, 0, 0);
 size(500, 500);

//https://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q12140122737
//キーボード
 p=width/2-200;
    q=height/2-215;
    smooth();
}

//https://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q11141333696
//イライラ棒と当たり判定（大体ここが本体）
void hit(int p,int q){
if(keyPressed){
color c = get(p+2,q);
  if( c == #ff0000 || c == #000000){
d = 1;
}
}
 }

void draw() {

    background(255);
    fill(255, 255, 0);//start
    noStroke();
    rect(20, 20, 60, 30);//start

    stroke(0);
    fill(100, 200, 200);
    strokeWeight(3);
    line(20, 20, 447.5, 20 );//最初の線
    line(20, 50, 432.5, 50 );
    line(447.5, 20, 485, 110);
    line(432.5, 50, 450, 90 );


for (int k = 70;k < 450; k +=40){//ギザギザ線
line(k,90,k+20,110);
line(k-20,110,k,90);
}
for (int l = 70; l < 450; l +=40){
  line(l,70,l+20,90);
  line(l-20,90,l,70);
}



    line(50,90,20,120);//ギザギザの後の線
    line(450, 110, 485, 110);
    line(20, 120, 20, 170);
    line(50, 110, 50, 150);
    line(50, 150, 90, 150);
    line(20, 170, 90, 170);
    line(90, 150, 90, 130);
    line(90, 170, 90, 230);
    line(90, 130, 360, 130);
    line(90, 230, 360, 230);
    line(360, 130, 360, 150);
    line(360, 230, 360, 170);
    line(360, 150, 480, 150);
    line(360, 170, 450, 170);
    line(450, 170, 450, 190);
    line(450, 190, 360, 260);
    line(480, 150, 480, 210);
    line(480, 210, 360, 305);
    line(360, 260, 1, 260);
    line(360, 305, 360, 338);
    line(360, 338, 30, 338);
    line(30, 338, 30, 420);
    line(1, 260, 1, 490);
    line(30, 420, 30, 455);
    line(1, 490, 440, 480);
    line(30, 455, 440, 470);
    line(340, 130, 340, 220);
    rect(105, 130, 100, 85 );
    rect(220, 145, 100, 85 );


    stroke(255, 0, 0);//赤の障害物
    drawLine(width/20+30, height/20+274, deg1);

    drawLine(width/20+30, height/20+274, deg2);

    drawLine(width/20+30, height/20+274, deg3);

    drawLine(width/20+110, height/20+274, deg1);

    drawLine(width/20+110, height/20+274, deg2);

    drawLine(width/20+190, height/20+274, deg1);

    drawLine(width/20+190, height/20+274, deg2);

    drawLine(width/20+190, height/20+274, deg4);

    drawLine(width/20+270, height/20+274, deg1);

    drawLine(width/20+270, height/20+274, deg2);


    deg1++;
    deg2+=2;
    deg3+=3;
    deg4+=4;


//https://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q12140122737
//キーボード
    fill(0, 0, 0);
    noStroke();
    ellipse(p, q, 3, 3);

    if ((keyStat&0x1)!=0) {
        q--;
        if (q<0)q=0;
    }
    if ((keyStat&0x2)!=0) {
        q++;
        if (q>height)q=height;
    }
    if ((keyStat&0x4)!=0) {
        p--;
        if (p<0)p=0;
    }
    if ((keyStat&0x8)!=0) {
        p++;
        if (p>width)p=width;
    }


  hit(p,q);//当たった後
if( d == 1){
fill(0,0,255);
textSize(80);
textAlign(CENTER);
text("GAME OVER",250,250);
}
}


void drawLine(int x, int y, int deg) {//回転
    pushMatrix();
    translate(x, y);
    rotate(deg*PI/180);
    line(0, 0, width/13, 0);
    popMatrix();
}


//https://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q12140122737
//キーボード
void keyPressed() {
    if (key == CODED) {
        switch(keyCode) {
            //ビットセット
        case UP:
            keyStat|=0x1;
            break;
        case DOWN:
            keyStat|=0x2;
            break;
        case LEFT:
            keyStat|=0x4;
            break;
        case RIGHT:
            keyStat|=0x8;
            break;
        }
    }
}

void keyReleased() {
    if (key == CODED) {
        switch(keyCode) {
            //ビットクリア
        case UP:
            keyStat&=~0x1;
            break;
        case DOWN:
            keyStat&=~0x2;
            break;
        case LEFT:
            keyStat&=~0x4;
            break;
        case RIGHT:
            keyStat&=~0x8;
            break;
        }
    }
}
