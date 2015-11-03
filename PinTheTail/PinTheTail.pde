PImage donkey;
PImage tail;
int x;
int y;
boolean tailPinned = false;

void setup(){
  
            
size(600, 478);    

donkey = loadImage("donkey.jpg");    
tail = loadImage("tail.jpg"); 


}

void draw() {
  fill(255,255,255);
  rect(0,0,50,50);
  if(mouseX<=50 && mouseY <=50){
    background(donkey); 
  }
  else{
    background(255,255,255);
  }
    fill(255,255,255);
  rect(0,0,50,50);
  fill(0,0,0);
textSize(24);
  text("Pin the tail on the donkey",100,20);
  textSize(16);
  text("Left click to pin, right click to remove",100,40);
    text("Move back to top left to see the donkey",100,55);
  image(tail, mouseX, mouseY); 
  if (mousePressed){
    if(mouseButton==LEFT){
    x = mouseX;
    y = mouseY;
    tailPinned = true;}
    else{
      tailPinned = false;
    }
  }
  if(tailPinned){
    image(tail, x, y); 
  }


}
