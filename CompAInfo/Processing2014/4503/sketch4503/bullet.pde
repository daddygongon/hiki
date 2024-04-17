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

