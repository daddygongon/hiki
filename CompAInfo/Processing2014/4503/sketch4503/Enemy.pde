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

