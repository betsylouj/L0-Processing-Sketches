

//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.

int xcoord = 0;

void setup() {
  size(800, 400);
 background(0,150,150);
 strokeWeight(4);
 line(700,20,700,70);
  line(700,120,700,170);
 line(700,220,700,270);
 line(700,320,700,370);

 strokeWeight(1);
}


void draw() {

  //3. make it a nice color
  fill(255,200,0);

  //4. if the mouse is pressed...
  //5. ... change the X co-ordinate so that the dot moves to the right
       if (mousePressed)
       {
        xcoord = xcoord+20; 
       }

  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
ellipse(xcoord,200,100,100);

//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)

//7. Use this method to play a ding when your dot crosses the finish line. 

if (xcoord>700)
{
 playSound(); 
 textSize(32);
  fill(0,200,100);
 text("You Won!!",100,100);
}

}


import ddf.minim.*;

boolean soundPlayed = false;

void playSound() {

  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013

    Minim minim = new Minim(this);                

    AudioSample sound = minim.loadSample("ding sound.wav");

    sound.trigger();

    soundPlayed = true;

  }

}





