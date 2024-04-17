import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup()
{
  size(800, 500, P3D);
  

  minim = new Minim(this);
  
  player = minim.loadFile("Linkin Park Ft. Steve Aoki - A Light That Never Comes.mp3");
  
  player.play();
}

void draw()
{
  background(0);
  strokeWeight(2);
  stroke(255);
  //how to cange color for each line?

  for(int i = 0; i < player.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    float x2 = map( i+1, 0, player.bufferSize(), 0, width );
    float x3 = map( i+2, 0, player.bufferSize(), 0, width );
    float x4 = map( i+3, 0, player.bufferSize(), 0, width );
    float x5 = map( i+4, 0, player.bufferSize(), 0, width );
    line( x1, 50 + player.left.get(i)*50, x2, 50 + player.left.get(i+1)*50 );
    line( x1, 150 + player.right.get(i)*50, x2, 150 + player.right.get(i+1)*50 );
    line( x1, 250 + player.left.get(i)*50, x2, 250 + player.left.get(i+1)*50 );
    line( x1, 350 + player.right.get(i)*50, x2, 350 + player.right.get(i+1)*50 );
    line( x1, 450 + player.left.get(i)*50, x2, 450 + player.left.get(i+1)*50 );
    
  }
}
