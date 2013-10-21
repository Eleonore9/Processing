/* 
Still based on my first Processing code. This time I taking advantage of the
looping property of the draw() function and added mouse interaction.
Moving the mouse enables to draw colourful circles. Clicking the mouse stops
the draw function.
*/

//Global variable
//ellipses colours
color[] palette = {#F5C3C3, #A8EAD9, #F8FA90, #D4A8EA, #A8CCEA, #F7B27D, #8CEA9E, #F55B73, #79DDFA};
float r = random(50, 70);
float x, y;
float nx, ny;
int delay = 16;

//Setup
void setup() {
  size(800, 600);
  background(#777171);
  noStroke();
  frameRate(10);
  x = random(width);
  y = random(height);
  nx = x;
  ny = y;
}

/*
Draw block for ellipses
all with different colors
*/
void draw() {
  r = r + sin(frameCount / 4);
  // Track circle to new destination
  x+=(nx-x)/delay;
  y+=(ny-y)/delay;
  // Draw the circles
  fill(palette[int(random(9))]);
  ellipse(int(x), int(y), int(r), int(r)); 
}

// Circle's next destination determined by mouse movement
void mouseMoved(){
  nx = mouseX;
  ny = mouseY;  
}
// It stops when mouse is pressed
void mousePressed() {
  exit(); 
}
