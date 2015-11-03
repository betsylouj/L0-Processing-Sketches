PImage bacon;
PImage pepper;

void setup(){
  bacon= loadImage("bacon.gif")  ;  
pepper= loadImage("pepper.gif")  ; 
pepper.resize(30, 30);

  size(800,800);
  fill(238,170,51);
  ellipse(400,400,700,700);
    fill(255,0,0);
  ellipse(400,400,650,650);
    fill(255,255,0);
  ellipse(400,400,600,600);
}

void draw(){
  if(mousePressed){
  
        image(bacon,mouseX, mouseY);
          image(pepper,mouseX +25, mouseY+ 25);
  }

}
