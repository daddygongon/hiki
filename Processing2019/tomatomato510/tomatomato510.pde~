import ddf.minim.*;

Minim minim;
AudioPlayer player;
void setup()
{
size(1000,800,P2D);
minim=new Minim(this);
player=minim.loadFile("game_maoudamashii_7_rock54.mp3");
player.play();
player.loop();
}
void draw() {
  if(mousePressed) {
    background(255);
  }else{
    background(0);
  }
for(int i =0; i < player.bufferSize() - 1; i++)
{
float x1 = map(i,0,player.bufferSize(),0,width);
float x2 = map(i+1, 0,player.bufferSize(),0,width);
float y1 = height / 3;
float y2 = height / 3 * 2;
line( x1,y1+player.left.get(i)*100,x2,y1+player.left.get(i+1)*100);
line( x1,y2+player.right.get(i)*100,x2,y2+player.right.get(i+1)*100);
}
}

void keyPressed() {
    float r=random(0,255);
    float g=random(0,255);
    float b=random(0,255);
  stroke(r, g, b); 
  }
