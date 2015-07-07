
void setup() {

  size(800, 800);
background(100,0,100);
textSize(32);
text("Betsy",600,600);
}


void draw() {

  


fill(0,100,200);

      
if (mousePressed)
{
  fill(random(255),random(255),random(255));
}

 
ellipse(mouseX,mouseY,100,200);

}
// Copyright Wintriss Technical Schools 2013

