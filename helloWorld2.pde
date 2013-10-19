/* 
New/improved version of my first Processing code for Coursera 
homework for "Introduction to Computational Arts" by SUNY
I was inspired by Apple's poster for its September 10 2013 
iPhone's event, see link: http://tcrn.ch/1aArzIa
*/

//Global variable
//ellipses colours
color[] palette = {#F5C3C3, #A8EAD9, #F8FA90, #D4A8EA, #A8CCEA, #F7B27D, #8CEA9E, #F55B73, #79DDFA};

//Setup
void setup() {
  size(600, 400);
  background(#DAECED);
  noStroke();
  noLoop();
}

/*
Draw block for ellipses
all with different colors
*/
void draw() {
  for (int i = 0; i < 20; i++){
    float x = random(width);
    float y = random(height);
    float r = random(50, 70);
    fill(palette[int(random(9))]);
    ellipse(int(x), int(y), int(r), int(r));
  }
}


