/* 
SHOOTING STARS - dark stars in a light sky-
Use your mouse to click and create a new star
When you drag you can make a shooting star!
*/
 
/*
MOUSE 
click and drag changes stars position

KEYS
save with key 's'
erase with Del or backspace
change colors with '1' and '2'
*/

//Global variables
color strokeColor = color(0, 10);

//setup
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  noFill();
  background(360);
}

//draw by pressing the mouse
void draw() {
if(mousePressed){
  pushMatrix();
  translate(width/2, height/2);
  scale(1.5);
  //style
  strokeWeight(2);
  stroke(strokeColor);

  //polygon definition (star shape)
  beginShape();
  vertex(0+mouseX-200, -50+mouseY-200);
  vertex(14+mouseX-200, -20+mouseY-200);
  vertex(47+mouseX-200, -15+mouseY-200);
  vertex(23+mouseX-200, 7+mouseY-200);
  vertex(29+mouseX-200, 40+mouseY-200);
  vertex(0+mouseX-200, 25+mouseY-200);
  vertex(-29+mouseX-200, 40+mouseY-200);
  vertex(-23+mouseX-200, 7+mouseY-200);
  vertex(-47+mouseX-200, -15+mouseY-200);
  vertex(-14+mouseX-200, -20+mouseY-200);
  vertex(0+mouseX-200, -50+mouseY-200);
  endShape();
  popMatrix();
}
}

//keystrokes interaction
/* save screenshots when key 's' is pressed
erase when key 'esc' or 'return' is pressed 
change color by pressing keys '1' or '2'
*/
void keyPressed() {
  if (key == 's' || key == 'S') saveFrame("myScreenshots.png");
  if (key == DELETE || key == BACKSPACE) background(360);
  switch(key) {
    case '1':
      strokeColor = color(0, 10);
      break;
    case '2':
      strokeColor = color(192, 100, 64, 10);
      break;
  }
}
