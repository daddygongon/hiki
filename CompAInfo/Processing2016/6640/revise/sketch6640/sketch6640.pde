/*
Copyright (c) 2016 Okamoto Sachi
Released under the MIT license
https://opensource.org/licenses/MIT
*/

float r;

// Angle and angular velocity, accleration
float theta;
float theta_vel;
float theta_acc;

void setup() {
  size(640, 360);
  
  // Initialize all values
  r = height * 0.45;
  theta =3;
  theta_vel = 2;
  theta_acc = 0.0005;
}

void draw() {
  
  background(199,252,248);
  
  // Translate the origin point to the center of the screen
  translate(width/2, height/2);
  
  // Convert polar to cartesian
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  // Draw the ellipse at the cartesian coordinate
  ellipseMode(CENTER);
  noStroke();
  fill(255,45,8);
  ellipse(x, y, 25,25);
  
  // Apply acceleration and velocity to angle (r remains static in this example)
  theta_vel += theta_acc;
  theta += theta_vel;

}

  
  
 
  
 