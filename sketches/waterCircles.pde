//It's a grey and rainy day, raindrops make circles in the water.
//The greyish blue background represents the water and reflects the grey sky
//The ellipses with 5 different shades of blue are the water circles

//Defining global variables
//background color
color blueGrey = #545E6D;
//color palette
color[] palette = {#6884BF, #45587F, #8AB0FF, #232C40, #7D9EE5};

//setup code block
void setup(){
  size(800, 600);
  background(blueGrey);
  noLoop();
}

//draw code block
void draw(){
  for(int i = 0; i < 30; i++) {
    //for loop to create ellipses with random positions
    // and different colors from the palette
    float x = random(width);
    float y = random(height);
    float r = random(40, 60);
    strokeWeight(random(2));
    stroke(palette[int(random(5))]);
    noFill();
    //water circles are represented by 3 ellipses
    ellipse(int(x), int(y), int(r), int(r));
    ellipse(int(x), int(y), int(r*2), int(r*2));
    ellipse(int(x), int(y), int(r*3), int(r*3));
  }
}
