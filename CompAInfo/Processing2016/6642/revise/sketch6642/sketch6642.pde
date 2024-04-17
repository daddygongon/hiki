/*
Copyright (c) 2016 <Yamakata Chihiro>
Released under the MIT license
https://opensource.org/licenses/mit-license.php
*/


float angle = 0.0;

void setup() {
    size(400, 400, P3D);
    background(0);
    noStroke();
    
    
}

void draw() {
    background(0);
   
    ambientLight(20, 20, 20);    //環境光を当てる
    lightSpecular(255, 255, 255);    //光の鏡面反射色（ハイライト）を設定
    directionalLight(100, 100, 100, 0, 1, -1);    //指向性ライトを設定

    //左の球
    pushMatrix();
    translate(100, height/2, 0);
    specular(10, 51, 247);  //オブジェクトの色を設定
    shininess(3.5);    //オブジェクトの光沢を設定
    sphere(50);
    popMatrix();
    angle+=1;
    if(angle>360)angle=0;
    rotateY(radians(angle));
    
    //右の球
    pushMatrix();
    translate(300, height/2, 0);
    specular(206, 104, 21);  //オブジェクトの色を設定
    shininess(1.0);    //オブジェクトの光沢を設定
    sphere(50);
    popMatrix();
    angle+=0.3;
    if(angle>360)angle=0;
    rotateY(radians(angle));
}