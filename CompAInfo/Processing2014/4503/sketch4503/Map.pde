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

