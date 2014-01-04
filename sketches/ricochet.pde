//Global variables
color [] back_palette = {#BCB9BF, #806873, #FCEEFF, #3C3440, #E6C6C1, #6397B2};
color [] ellip_palette = {#F5C3C3, #A8EAD9, #F8FA90, #D4A8EA, #A8CCEA, #F7B27D, #8CEA9E, #F55B73, #79DDFA};

//Setup
void setup() {
  size(800, 600);
  background(#6397B2);
  noFill();
}

//Draw stays empty
void draw() {
}

//Events on key press
void keyPressed() {
    pushMatrix();
    color back = back_palette[int(random(6))];
    color ellip = ellip_palette[int(random(9))];
    float x = random(width);
    float y = random(height);
    float r = random(60, 80);
    translate(width/4, height/4);
    scale(1.5);
    //style
    background(back);
    strokeWeight(2);
    stroke(ellip);
    //ellipses
    ellipse(int(x/2), int(y/2), (int(r)*1.5), int(r));
    ellipse(int(x/2), int(y/2), (int(r)*3), (int(r)*2));
    ellipse(int(x/2), int(y/2), (int(r)*4.5), (int(r)*3));
    popMatrix();

  //save screenshot by pressing 's' key
  if (key == 's' || key == 'S') saveFrame("myScreenshots.png");
  //clear when 'delete' or 'backspace' pressed
  if (key == DELETE || key == BACKSPACE) background(#6397B2);

}
