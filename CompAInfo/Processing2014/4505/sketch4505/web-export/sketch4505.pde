float SPEED = 3; 
float R = 20; 
Ball a_ball;

void setup() {
  size(400, 250);
  background(90, 50, 50);
  noFill();
  stroke(5, 255, 255);
  a_ball = new Ball(width / 2, height / 2, SPEED, SPEED * 2);
}

void draw() {
  a_ball.move();
  a_ball.draw();
}

class Ball
{
  float x, y;
  float vx, vy; 

  Ball(
  float _x, float _y, float _vx, float _vy) {
    x = _x;
    y = _y;
    vx = _vx;
    vy = _vy;
  }

  void move() {

    x = x + vx; 
    if (x - R <= 0) {
      x = R;
      vx *= -1;
    }
    if (x + R >= width) {
      x = width - R;
      vx *= -1;
    }

    y = y + vy;
    if (y - R <= 0) {
      y = R;
      vy *= -1;
    }
    if (y + R >= height) {
      y = height - R;
      vy *= -1;    }
  }
  
  void draw() {
    stroke(155);
    ellipse(x, y, R * 2, R * 2);
  }
}

