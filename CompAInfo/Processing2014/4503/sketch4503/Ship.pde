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

