
import processing.sound.*;
SoundFile file;

int x = 315;
int y = 240;
int accel = 1;

void setup() {
  
  file  = new SoundFile(this,"pewpew.wav");
  size(800  , 600);
  PImage catPic = loadImage("cat-02.jpg");
  background(catPic);  //can use image(catPic,0,0);
}

void draw() {
  noStroke();
  fill(0,255,0);
  ellipse(x,y,60,60);
  ellipse(x+155,y+20,60,60);
  
}

void keyPressed() {
  x+=3*accel;
  y+=3*accel;
  accel++;
}