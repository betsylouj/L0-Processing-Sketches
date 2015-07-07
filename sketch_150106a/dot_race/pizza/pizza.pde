
import ddf.minim.*;                //at the very top of your sketch
AudioSample sound;

void setup ()
{
background(184, 230, 230);
size(1200,700);
PImage pizzaBox = loadImage("pizzabox.jpg");    //in setup method
pizzaBox.resize(1200,700);
background(pizzaBox);                    //in setup method

fill(219, 148, 77);
ellipse(600,350,600,600);
fill(230, 46, 0);
ellipse(600,350,570,570); 
fill(255, 204, 0);
ellipse(600,350,540,540); 

Minim minim = new Minim(this);   
sound = minim.loadSample("thud.wav");    
}

void draw ()
{
if (mousePressed)
  {
  PImage mushroom = loadImage("mushroom.gif");    
  mushroom.resize(50, 50);
  image(mushroom, mouseX, mouseY);
   sound.trigger();
  }
 
if (mousePressed && (mouseButton == RIGHT))
  {
  PImage olive = loadImage("olive.gif");    
  olive.resize(50, 50);
  image(olive, mouseX, mouseY);
  sound.trigger(); 
  }
}
