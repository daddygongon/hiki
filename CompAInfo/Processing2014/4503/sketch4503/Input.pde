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

