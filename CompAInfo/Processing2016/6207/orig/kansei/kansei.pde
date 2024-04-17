ArrayList<Block> blocks = new ArrayList<Block>();
//ブロックをランダムに80個配置　ArrayListでブロックを管理し、画面いっぱいに適当に配置
// for関数のiで数を指定　
Player player;
PVector basePos = new PVector();


//setup()は初期化、drawは繰り返し実行
void setup(){
  size(1000,600);
  
  blocks.add(player = new Player(100,100));
  for(int i=0;i<80; i++){
  blocks.add(new Block(random(width),height - random(height * 7),random(50,350),10,color(255)));
  } //上方向に画面7つ分ランダムに配置し、ブロックをまばらにする
  }



void draw(){  
   PImage img;
   img = loadImage("hole2.jpg"); //背景
  image(img,0,0);
    basePos.lerp(new PVector(-player.pos.x + width/2, -player.pos.y + height/2),0.02f);
  translate(basePos.x,basePos.y);
  for(Block b:blocks){
    b.update();
    b.draw();
  }
}

//class 「型」のこと
class Block{
  PVector pos = new PVector();
  PVector size = new PVector();
  PVector vel = new PVector();
  PVector prevPos = new PVector();
 //ステージに配置するブロッククラス、位置、大きさ、速度、前の位置 
  
  color col;
  
  Block(float x, float y,float w, float h, color col){
     //X,Y位置、横幅、縦幅、色でブロックを生成
  pos.set(x,y,0);
  size.set(w/2,h/2,0);
  this.col = col;
}
  
  void update(){
    prevPos.set(pos);
    pos.add(vel);
}

  void draw(){
    fill(col);
    rectMode(CENTER);
    ellipse(pos.x, pos.y, size.x*2, size.y*2);
  }
  boolean syototu(Block b){
  return abs(pos.x - b.pos.x)<abs(size.x + b.size.x)&&
          abs(pos.y - b.pos.y)<abs(size.y + b.size.y);
  //プレイヤーとブロックの衝突判定
  //衝突していたらsyototu()がtrueを返すように
}
}

class Player extends Block{
  boolean landing;
  int jumpingFrames;
  
  Player(float x, float y){
  //プレイヤークラスを用意し、ブロッククラスを継承しつつ、位置だけで初期化をできるように
  super(x,y,20,20,color(245,250,10));  
}
void update(){
  super.update();
  
  float x = mouseX - pos.x - basePos.x;
  if(abs(x)>size.x)vel.x += x<0 ? -0.2f : 0.2f;
  //マウスの横移動
  
    vel.y += 0.5f;  //重力 +方向がY画面下
    if(mousePressed){
    if(landing){
      vel.y -= 2.0f;
      jumpingFrames =30; //滞空時間30フレーム
    }if(jumpingFrames-->0){
      vel.y -= 1.0f;
    //
    }
  }else jumpingFrames = 0;
  
  vel.mult(1f);
  vel.limit(10.0f);
  //少し止まる
 if(pos.y>height)pos.y= -height;
 //下に消えたら上から降ってくる

landing = false;
  for(Block b: blocks){
    if(b==this)continue;
    if(syototu(b)){
   if(prevPos.y > b.pos.y && b.pos.y - b.size.y <= b.pos.y + b.size.y){     
     pos.y = size.y + b.pos.y + b.size.y;
   }else if(pos.y + size.y >=b.pos.y - b.size.y){
     pos.y = -size.y + b.pos.y - b.size.y;
     landing = true; //landing 地面接地
   }
}
  }
}
}