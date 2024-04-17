//BallGame.pde
//引用元　http://mslabo.sakura.ne.jp/WordPress/make/index/%E7%AC%AC%EF%BC%93%E7%AB%A0%EF%BC%9A%E6%94%B9%E5%AE%9A%E7%89%88-%E3%82%B2%E3%83%BC%E3%83%A0%E7%94%BB%E9%9D%A2%E3%82%92%E4%BD%9C%E6%88%90%E3%81%97%E3%82%88%E3%81%86%EF%BC%88%E3%81%9D%E3%81%AE-4/
//cc by Hiroki Watanabe , 2016

private final static int    BAR_MOVE_SPEED = 13;
private final static int    ADD_SPEED = 1;   //ボールの加速度

//グローバル定数
private final static int    STATUS_START  = 0;                      //ゲーム開始前
private final static int    STATUS_PLAY = 1;                        //ゲーム中
private final static int    STATUS_GAMEOVER = 2;                    //ゲームオーバー
private final static String GAMEBACK_FILE = "Game_Background.jpg";  //ゲーム画面file
private final static String BLOCK_FILE = "Block.jpg";               //ブロックfile
private final static String BAR_FILE = "Bar.jpg";                   //反射バーfile
private final static String BALL_FILE = "Ball.png";                 //ボールfile
private final static String OVERBACK_FILE="Gameover.jpg";           //ゲームオーバー画面file
private final static String TOKUTEN = "得点：";                     //得点文字

//グローバル変数
PImage  Background;       //タイトル画面背景画像
PImage  GameGround;       //ゲーム画面背景画像
PImage  OverGround;       //ゲームオーバー画面画像
PImage  BlockImage;       //周辺ブロック画像
PImage  Bar;              //反射バー画像
PImage  Ball;             //ボール画像
int  iGameStatus;         //ゲーム状態変数（START->PLAY->OVER）
int  iBarLocateX;         //反射バーのX座標
int  iBarLocateY;         //反射バーのY座標
int  iBallLocateX;        //ボールのX座標
int  iBallLocateY;        //ボールのY座標
int  iGameOverLocateX;    //ゲームオーバー画面のX座標
int  iGameOverLocateY;    //ゲームオーバー画面のY座標
int  iBallSpeedX;         //ボールの移動速度(横)
int  iBallSpeedY;         //ボールの移動速度（縦）
int  iRefCount;           //ボールの反射回数
int  iScoreBase;          //得点

public void setup() {
  size(400, 600);
  frameRate(60);

  Background = loadImage("Background.jpg");  //タイトル画面の背景画像を読み込み
  GameGround = loadImage(GAMEBACK_FILE);     //ゲームの背景画像を読み込み
  BlockImage = loadImage(BLOCK_FILE);        //ブロックの画像を読み込み
  Bar = loadImage(BAR_FILE);                 //反射バーの画像を読み込み
  Ball = loadImage(BALL_FILE);               //ボールの画像を読み込み
  OverGround =  loadImage(OVERBACK_FILE);    //ゲームオーバー画面の背景画像を読み込み

  initValue();   //変数を初期化
}

private void initValue() {
  //ゲーム状態変数を「ゲーム開始前」にする
  iGameStatus = STATUS_START;

  //反射バーの初期位置を計算する
  iBarLocateX = (width - Bar.width)/2;
  iBarLocateY = height - 64;

  //ボールの初期位置を計算する
  iBallLocateX = (width - Ball.width)/2;
  iBallLocateY = height/2;

  //ゲームオーバー画面の初期位置を計算する
  iGameOverLocateX = (width - OverGround.width)/2;
  iGameOverLocateY = height/4;

  //ボールの移動速度を計算する
  iBallSpeedX = 4;
  iBallSpeedY = 4;

  //ボールの反射回数を初期化する
  iRefCount = 0;
}

public void draw() {
  if ( iGameStatus == STATUS_START ) {

    // ゲーム状態変数が「ゲーム開始前」の場合、ゲームタイトル画面を表示
    background( Background );

    initValue();   //変数初期化関数呼び出し

    //キーが押されているか判定
    if ( keyPressed  == true ) {
      if ( key == ' ' ) {

        //SPACEキーが押されたら、ゲーム状態変数を「ゲーム中」に書き換え
        iGameStatus = STATUS_PLAY;
      }
    }
  }

  if ( iGameStatus == STATUS_PLAY ) {

    // ゲーム状態変数が「ゲーム中」の場合、ゲーム画面表示関数を呼び出し
    dispGame();

    moveBall();  //ボールを描画する

    //左右の矢印キーが押されていたら、反射バーを動かす
    if ( keyPressed  == true ) {
      if (  keyCode == LEFT || keyCode == RIGHT ) {
        moveBar( keyCode );
      }
    }
  }

  // ゲーム状態変数が「ゲームオーバー」の場合、ゲームオーバー画面を表示
  if ( iGameStatus == STATUS_GAMEOVER ) {
    image( OverGround, iGameOverLocateX, iGameOverLocateY );    //ゲームオ-バー画面の背景画像を表示

    //キーが押されているか判定
    if ( keyPressed  == true ) {
      if ( key == 'x' || key == 'X' ) {

        //Xキーが押されたら、ゲーム状態変数を「ゲーム開始前」に書き換え
        iGameStatus = STATUS_START;
      }
      if ( key == 'q' || key == 'Q' ) {

        //Qキーが押されたら、プログラムを終了
        exit();
      }
    }
  }
}

private void dispGame() {
  background( GameGround );  //ゲーム画面の背景画像を表示

  for ( int Y = 0; Y < height; Y=Y+BlockImage.height ) {
    image( BlockImage, 0, Y );  //左端にブロックを配置する
  }

  for ( int Y = 0; Y < height; Y=Y+BlockImage.height ) {
    image( BlockImage, width - BlockImage.width, Y );  //右端にブロックを配置する
  }

  for ( int X = BlockImage.width; X < width - BlockImage.width; 
    X=X+BlockImage.width ) {
    image( BlockImage, X, 0 );  //上端にブロックを配置する
  }

  image( Bar, iBarLocateX, iBarLocateY );   //反射バーを配置する

  dispScore( iRefCount );    //得点を表示する
}

// 得点を画面右下に表示する
private void dispScore( int iScoreBase ) {
  String    sTokuten;    //得点用文字列

  //数値を文字に変換
  sTokuten =   TOKUTEN + String.format("%03d", iScoreBase );

  //表示
  text( sTokuten, 300, 580 );
}

//反射バーを動かす
void moveBar( int key ) {
  if ( key == LEFT ) {

    //左矢印キーが押された場合
    iBarLocateX = iBarLocateX - BAR_MOVE_SPEED;
  } else if ( key == RIGHT ) {

    //右矢印キーが押された場合
    iBarLocateX = iBarLocateX + BAR_MOVE_SPEED;
  }
  //反射バーが壁にぶつかる場合は、めり込まないように位置を戻す
  if ( ( iBarLocateX + Bar.width ) >  (width - BlockImage.width) ) {

    //右の壁の場合
    iBarLocateX =  (width - (BlockImage.width + Bar.width));
  } else if ( iBarLocateX < BlockImage.width ) {

    //左の壁の場合
    iBarLocateX =  BlockImage.width;
  }
}

//ボールを動かす
void moveBall() {
  iBallLocateX = iBallLocateX + iBallSpeedX;
  iBallLocateY = iBallLocateY - iBallSpeedY;
  image( Ball, iBallLocateX, iBallLocateY );

  //壁に衝突していたらボールを反射させる
  if ( (iBallLocateX + Ball.width)  > (width - BlockImage.width) ) {

    //右の壁にあたった場合、横方向の移動を反転させる
    iBallSpeedX = -1 * iBallSpeedX;

    //ボールがブロックにめり込まないように補正
    iBallLocateX = width - (BlockImage.width + Ball.width);
  }
  if ( iBallLocateX < BlockImage.width ) {

    //左の壁にあたった場合、横方向の移動を反転させる
    iBallSpeedX = -1 * iBallSpeedX;

    //ボールがブロックにめり込まないように補正
    iBallLocateX = BlockImage.width;
  }
  if ( iBallLocateY < BlockImage.height ) {

    //上の壁にあたった場合、縦方向の移動を反射させる
    iBallSpeedY = -1 * iBallSpeedY;

    //ボールがブロックにめり込まないように補正
    iBallLocateY = BlockImage.height;
  }

  if ( iBallLocateX + Ball.width  > iBarLocateX &&
    iBarLocateX  + Bar.width   > iBallLocateX &&
    iBallLocateY + Ball.height > iBarLocateY &&
    iBarLocateY + Bar.height   > iBallLocateY ) {

    //ボールが反射バーの上に当たった時、反転させる
    iBallSpeedY = -1 * iBallSpeedY;

    //ボールの反射回数を加算
    iRefCount = iRefCount + 1;

    //ボールの位置を反射バーの上に補正
    iBallLocateY = iBarLocateY - Ball.height;

    //ボールが反射バーに当たると加速
    iBallSpeedX = iBallSpeedX + ADD_SPEED;
    iBallSpeedY = iBallSpeedY + ADD_SPEED;
  }

  //ゲームオーバーを判定
  if ( iBallLocateY > height ) {

    //ボールが画面外へ落ちるとゲームオーバー
    iGameStatus = STATUS_GAMEOVER;
  }
}