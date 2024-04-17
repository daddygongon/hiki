
Game g;
int x = width/2;
int y =750;
int A;
int B;
int C;
int sean = 0;

void setup() {
  g = new Game();
  size (400, 800);
  textSize(50);
  textAlign(CENTER);
}

void draw() {
  if (sean == 0) {
    fill(0);
    background(255);
    text("Press ENTER", width/2, height/2);
    C = 0;
    if (keyCode == ENTER) {
      A = millis();
      sean=1;
    }
  }

  if (sean == 1) {
    fill(255);
    B = millis();
    C += B-A;
    A = B;
    g.update();
  }
  else if (sean == 2) {
    fill(0);
    background(255);
    text("GameOver", width/2, height/2);
    if (keyCode==ENTER) {
      g = new Game();
      sean=0;
    }
  }
  if (sean == 3) {
    fill(0);
    background(255);
    text("GameClear", width/2, height/2);
    fill(0, 255, 0);
    text(nf((C/1000)%60, 3) + ":" + nf((C/10)%100, 2),width/2,height/2-50);
    fill(255);
    if (keyCode==ENTER) {
      g = new Game();
      sean=0;
    }
  }
}
void keyPressed() {
  if (key == CODED)g.input.keyPressedc(keyCode);
  else g.input.keyPressed(key);
}
void keyReleased() {
  if (key == CODED)g.input.keyReleasedc(keyCode);
  else g.input.keyReleased(key);
}

class Enemy extends Mob {
  Game g;
  float vx, vy;
  Enemy(Game g, float x, float y) {
    this.g = g;
    this.x = x;
    this.y = y;
    vx = random(2)-1;
    vy = 5;
  }

  void update() {
    han();
    shot();
    move();
    if (y==height) {
      g.map.e.remove(this);
    }
  }
  void shot() {
  }
  void display() {
    ellipse( x, y, 10, 10);
  }
  private void han() {
  }
  private void move() {
    x+= vx; 
    y+= vy;
  }
}

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

class Input
{
  Game g;
  boolean left, right, up, down, z;
  boolean stop = false;
  Input(Game g) {
    this.g = g;
    left = false;
    right = false;
    up = false;
    down = false;
    z = false;
  }
  void keyPressed(char _key) {
    switch(_key) {
    case 'z':
      z = true;
      break;
    case 's':
      stop = !stop;
      if (stop)noLoop();
      else loop();
      break;
    }
  }
  void keyPressedc(int _key) {
    switch(_key) {
    case LEFT:
      left = true;
      break;
    case RIGHT:
      right = true;
      break;
    case UP:
    up = true;
    break;
    case DOWN:
      down = true;
      break;
    }
  }
  void keyReleased(int _key) {
    switch(_key) {
    case 'z':
      z = false;
      break;
    }
  }
  void keyReleasedc(int _key) {
    switch(_key) {
    case LEFT:
      left = false;
      break;
    case RIGHT:
      right = false;
      break;
    case UP:
      up = false;
      break;
    case DOWN:
      down = false;
      break;
    }
  }
  void keyTyped(char _key) {
  }
}

class Map
{
//  ArrayList<Ball> b;
  ArrayList<Enemy> e;
  Ship ship;
  Game g;
  Map(Game g) {
    this.g = g;
//    b = new ArrayList<Ball>();
    e = new ArrayList<Enemy>();
    ship = new Ship(g, 200, 750);
    frameRate(60);
  }
  void update() {
    if (frameCount%5 == 0)spawn_enemies(0);
    ship.update();
    for (int i=0; i<e.size(); i++) {
      e.get(i).update();
    }
  }
  void display() {
    ship.display();
/*    for (int i=0; i<b.size(); i++) {
      b.get(i).display();
    }*/
    for (int i=0; i<e.size(); i++) {
      e.get(i).display();
    }
  }
  void spawn_enemies(int id) {
    e.add(new Enemy(g, random(width -20), 0));
  }
}

class Mob extends Objects{
  Mob (){
  }
}
class Objects{
  float x, y;
}
class Ship extends Objects {
  float speed;
  Game g;
  Ship(Game g, float x, float y) {
    this.g = g;
    super.x = x;
    super.y = y;
    speed = 2;
  }

  void update() {
    move();
    han();
    if (y<=0) sean=3;
  }

  private void move() {
    if (g.input.left)move_left();
    if (g.input.right)move_right();
    if (g.input.up)move_up();
    if (g.input.down)move_down();
  }

  void display() {
    rectMode(CENTER);
    rect(x, y, 30, 30);
  }
  private void han() {
    ArrayList<Enemy> enemy=g.map.e;
    for (int i = 0; i<enemy.size(); i++) {
      Enemy e = enemy.get(i);
      if (dist(x, y, e.x, e.y)<15) {
        sean=2;
      }
    }
  }
  void move_left() {
    x-= speed;
  }
  void move_right() {
    x+= speed;
  }
  void move_up() {
    y-= speed;
  }
  void move_down() {
    y+= speed;
  }
}

class bullet
{
  float vx, vy;
  bullet(int a, int b) {
    x=a;
    x=b;
    vx = 0;
    vy = 5; //tamanosokudo
  }
  void update() {
    display();
    move();
  }
  private void display() {
    fill(255);
    ellipse(x, y, 10, 10);
  }
  private void move() {
    x+= vx;
    y-= vy;
  }
}


