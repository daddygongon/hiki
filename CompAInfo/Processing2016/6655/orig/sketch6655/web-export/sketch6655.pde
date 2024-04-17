// AirHockey.pde
// Source code is available under the Creative Commons Attribution-ShareAlike License
// cc by Shigeto R. Nishitani, 2015 

int p_x, p_y; // pack x,y
int n_x, n_y;
int v_x, v_y; 
int m_x, m_y; // pack velocity
int a_x, a_y;  
int b_x, b_y;
int r=200; 

int w_width=600, w_height=700; // window width,height
int s_y=w_height-10, s_h=15, s_w=40; //stick, y, height, width

void setup() {
  //  size(w_width,w_height);
  size(600, 700); //for JavaScript
  init_pack();
}

void init_pack() {
  p_x=w_width/2;
  p_y=0;
  v_x=(int) random(1, 5);
  v_y=(int) random(1, 5);
  v_y=8;

  //
  n_x=w_width/4;
  n_y=0;
  m_x=(int) random(1, 8);
  n_y=(int) random(1, 5);
  m_y=6;
  a_x=w_width/4;
  a_y=0;
  b_x=(int) random(1, 8);
  a_y=(int) random(1, 5);
  b_y=5;
  
}
void draw() {
  background(200, 222, 142);

  // stick move
  noStroke();
  fill(25, 120, 39);
  rect(mouseX-s_w, s_y, s_w*2, s_h);

  // pack move
  stroke(255, 0, 255);
  fill(128, 0, 0);
  int r=25;
  int e=40;
  int u=60;
  
  
  stroke(255, 0, 255);
  fill(128, 0, 0);







  // wall bound
  if (p_x>w_width || p_x<0 ) {
    v_x = -v_x ;
  }
  if (p_y<0) {
    v_y = -v_y;
  }
  if (n_x>w_width || n_x<0) {
    m_x= -m_x;
  }
  if (n_y<0) {


    m_y = -m_y;
    
  }
  if (a_x>w_width || a_x<0 ) {
    b_x = -b_x ;
  }
  if (a_y<0) {
    b_y = -b_y;}
    
    
  // stick bound
  if (p_y<s_y+s_h && p_y>s_y-s_h && 
    p_x>mouseX-s_w && p_x<mouseX+s_w ) {
    v_y = -v_y;
  }
  if (n_y<s_y+s_h && n_y>s_y-s_h && 
    n_x>mouseX-s_w && n_x<mouseX+s_w ) {
    m_y = -m_y;
  }
  if (a_y<s_y+s_h && a_y>s_y-s_h && 
    a_x>mouseX-s_w && a_x<mouseX+s_w ) {
    b_y = -b_y;
  }
  p_x += v_x;
  p_y += v_y;
  n_x += m_x;
  n_y += m_y;
  a_x += b_x;
  a_y += b_y;
  fill(212,54,34);
  ellipse(p_x, p_y, r, r);
  fill(167,82,21);
  ellipse(n_x, n_y, e, e);
  fill(12,32,63);
  ellipse(a_x, a_y, u, u);
 
  // out of bounds
  if (p_y>w_height) 
 if (a_y>w_height) 

    if (n_y>w_height) {

      init_pack();
    }

}
