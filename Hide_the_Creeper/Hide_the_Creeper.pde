int cx=130;
int cy=130;
PImage creeper;
PImage minecraft;

void setup(){
  size(1500,844); 
  minecraft = loadImage("minecraft.jpg");
  background(minecraft);
  creeper= loadImage("Creeper.png");
  creeper.resize(5 ,10  );
}

void draw(){
  image(creeper,cx,cy);
  if(mousePressed){
    fill(255,0,0);
    ellipse(mouseX,mouseY,5,5);
    if(Near(mouseX,mouseY)){
      background(minecraft);
      fill(255,0,0);
      textSize(16);
      text("You found the creeper", mouseX+5,mouseY);
      cx = (int)random(1490);
      cy = (int)random(834);
      println(cx + " ,"+cy);
    }
  }
}

boolean Near(int x,int y){
 if(abs(x-cx)<50 && abs(y-cy)<50){
  return true; 
  }
  else
    return false;
}
