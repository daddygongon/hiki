class Game
{
  PImage Haikei;
  int HaikeiX, HaikeiY;
  Map map;
  Input input;
  Game() {
    Haikei = loadImage("MOMIJI.png");
    map = new Map(this);
    input = new Input(this);
    HaikeiX = 0;
    HaikeiY = 0;
  }
  void update() {
    map.update();
    display();
    fill(0,255,0);
    text(nf((C/1000)%60,3) + ":" + nf((C/10)%100,2),300,100);
    fill(255);
  }
  void display() {
    image(Haikei, HaikeiX, HaikeiY);
    map.display();
  }
}

