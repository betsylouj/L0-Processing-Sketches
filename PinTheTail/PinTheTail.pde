import ddf.minim.*;                //at the very top of your sketch
AudioSample sound1;
AudioSample sound2;

PImage donkey;
PImage tail;

int x;
int y;
boolean tailPinned = false;

void setup(){
  
            
size(600, 478);    

donkey = loadImage("donkey.jpg");    
tail = loadImage("tail.jpg"); 

Minim minim = new Minim(this);        //in the setup method            
sound1 = minim.loadSample("heehaw.wav");
sound2 = minim.loadSample("ow.wav");


}

void draw() {
  fill(255,255,255);
  if(mouseX<=50 && mouseY <=50 || tailPinned){
    background(donkey); 
  }
  else{
    background(255,255,255);
  }
  fill(255,255,255);
  rect(0,0,600,60);
  rect(0,0,50,50);
  //rect(90,195,20,20);
  fill(0,0,0);
  textSize(24);
  text("Pin the tail on the donkey",100,20);
  textSize(16);
  text("Left click to pin, right click to remove and play again",100,40);
   text("Move back to top left to see the donkey",100,55);
  image(tail, mouseX-15, mouseY-15); 
  if (mousePressed){
    if(mouseButton==LEFT){
    x = mouseX;
    y = mouseY;
      if(x>=90&&x<=110&y>=195&&y<=215){
        tailPinned = true;
        sound1.trigger();   
      } 
      else{
        sound2.trigger(); 
        tailPinned = false;
      }
    } 
   else if (mouseButton == RIGHT){
     tailPinned = false;
   }
  }
  if(tailPinned){
    image(tail, x-15, y-15); 
  }
}
