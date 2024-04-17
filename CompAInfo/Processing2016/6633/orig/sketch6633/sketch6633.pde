
int x, flag = 300;
int eflag = 0, ex, ey;
int point = 0;
int num;

void setup()
{
  size(600, 600);
  colorMode(RGB, 256);
  smooth();
  textSize(72);
  textAlign(CENTER);
  x = 300;
}

void draw()
{
  if (flag == 300)
  {
    background(0);
    fill(256,0,0);
    text("Let's Play Game", 300, 200);
    fill(256, 0, 0);
    text("Press ENTER KEY", 300, 400);
    flag = 0;
  }
  if (flag == 1)
  {
    background(0);
    key();
    enemy();
    mainDraw();
    check();
  }
  if (flag == 0)
  {
    if (keyCode == ENTER)
    {
      flag = 1;
      keyCode = UP;
    }
  }
}

void backgroung()
{
  fill(0, 0, 256);
  rect(0, 0, 600, 600);
}

void key()
{
  if (keyPressed)
  {
    if (keyCode == RIGHT)x += 5;
    if (keyCode == LEFT)x -= 5;
    if (x < 0)x = 0;
    if (x > 600)x = 600;
  }
}

void enemy()
{
  if (eflag == 0)
  {
    eflag = 1;
    ex = (int)random(600);
    ey = 0;
  }
  if (eflag == 1)
  {
    ey += 30;
    if (ey > 600)
    {
      eflag = 0;
      point ++;
    }
  }
}

void mainDraw()
{
  fill(256, 0, 0);
  ellipse(x, 500, 25, 25);
  fill(0, 0, 256);
  ellipse(ex, ey, 40, 40);
}

void check()
{
  num = abs(ex - x) * abs(ex - x) + abs(500 - ey) * abs(500 - ey);
  if (num < 225)over();
}

void over()
{
  background(0);
  fill(256, 0, 0);
  flag = 0;
  text("GAME OVER", 300, 261);
  text("score=" + point, 300, 339);
  point = 0;
  eflag = 0;
  x = 300;
}