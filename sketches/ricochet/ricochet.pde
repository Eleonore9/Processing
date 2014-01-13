//-------------------------------Global variables--------------------------------------
color [] back_palette = {#BCB9BF, #806873, #FCEEFF, #3C3440, #E6C6C1, #6397B2};
color [] ellip_palette = {#F5C3C3, #A8EAD9, #F8FA90, #D4A8EA, #A8CCEA, #F7B27D, #8CEA9E, #F55B73, #79DDFA};
//Set variables to introduce delays
int timeDelay = 1000;
int timeDelay2 = 2000;
int timeDelay3 = 3000;
int lastTime = 0;
boolean canDraw = false;
boolean canDraw2 = false;
boolean canDraw3 = false;
//Define variables for ellipses coordinates and radius
float x;
float y;
float r;

//-------------------------------Setup--------------------------------------
void setup() {
  size(800, 600);
  background(#6397B2);
}

//--------------------------Events on key press-----------------------------
void keyPressed() {
    //Set new colors and ellipses at each key press
    color back = back_palette[int(random(6))];
    color ellip = ellip_palette[int(random(9))];
    x = random(width);
    y = random(height);
    r = random(60, 80);
    //style
    background(back);
    strokeWeight(1.5);
    stroke(ellip);
    //Draw the 1st small ellipse with fill
    //It represents the impact of an object in the water
    fill(ellip);
    ellipse(int(x), int(y), (int(r)/3),(int(r)/4.5));
    //Record the time to measure the 1 second time delay
    lastTime = millis();
    //Allow the drawing of the other ellipses
    canDraw = true;
  //Other events
  //save screenshot by pressing 's' key
  if (key == 's' || key == 'S') saveFrame("myScreenshots.png");
  //clear when 'delete' or 'backspace' pressed
  if (key == DELETE || key == BACKSPACE) background(#6397B2);

}

//-------------------------------Draw--------------------------------------
void draw() {
  //Only draw the large ellipses one second after the small one
  //They represent the water circles
  if((millis() - lastTime >= timeDelay) && (canDraw == true)) {
  //draw other ellipses without fill   
  noFill();
  ellipse(int(x), int(y), (int(r)*1.5), int(r));
  canDraw = false;
  canDraw2 = true;
  }
  if((millis() - lastTime >= timeDelay2) && (canDraw2 == true)) {
  noFill();
  ellipse(int(x), int(y), (int(r)*3), (int(r)*2));
  canDraw2 = false;
  canDraw3 = true;
  }
    if((millis() - lastTime >= timeDelay3) && (canDraw3 == true)) {
  noFill();
  ellipse(int(x), int(y), (int(r)*4.5), (int(r)*3));
  canDraw3 = false;
  }
}


