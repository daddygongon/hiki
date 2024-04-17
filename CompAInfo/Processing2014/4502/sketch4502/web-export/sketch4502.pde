int map_size = 10;
int block_size = 60;
int[][] map = new int[map_size][map_size];
int t;
 
void setup(){
  size(600,600);
  for(int i=0; i<map_size; i++){
    for(int j=0; j<map_size; j++){
      //全て白に
      map[i][j] = 1;
    }
  }
  //問題を作成
  for(int i=0; i<30; i++){
    set(random(width-1),random(height-1));
  }
}
void draw(){
  background(0);
  for(int i=0; i<map_size; i++){
    for(int j=0; j<map_size; j++){
      if(map[i][j] == -1){
          fill(255);
          textSize(200);
          text("GAME \nCLEAR",0,250);
      }
      if(map[i][j] == 1){
          fill(0);
      }
      rect(i*block_size,j*block_size,block_size,block_size);
    }
  }
}
 
void mousePressed(){
  set(mouseX,mouseY);
}
 
void set(float px,float py){
  int x = (int)(px/block_size);
  int y = (int)(py/block_size);
  if(x<0 || x>map_size || y<0 || y>map_size)return;
  map[x][y] *= -1;
  if(x >= 1)map[x-1][y] *= -1;
  if(x <= map_size-2)map[x+1][y] *= -1;
  if(y >= 1)map[x][y-1] *= -1;
  if(y <= map_size-2)map[x][y+1] *= -1;
}

