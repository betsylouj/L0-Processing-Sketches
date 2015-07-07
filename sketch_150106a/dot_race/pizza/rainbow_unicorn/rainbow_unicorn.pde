
PImage rainbow;
PImage unicorn;

void setup() {

  // 1. Find an image of a rainbow, save it, and drop it onto this sketch.
  rainbow = loadImage("rainbow.png");  // 2. Change this to match your file name. 
  rainbow.resize(800,800);
  size(rainbow.width, rainbow.height);
  background(rainbow);

  // 4. Find an image of a unicorn, save it, and drop it onto this sketch.  
  unicorn = loadImage("unicorn.jpg"); // 5. Change this to match your file name.
}

void draw() {

image(unicorn, mouseX, mouseY);
if (mousePressed)
{
 background(rainbow); 
}

  // 7. Change the line above so that the unicorn moves with the mouse.
  // 8. You may want to make your unicorn transparent. See these instructions: bit.ly/pretty-unicorn
  // 9. When the mouse is pressed, reload the rainbow background

  





}





