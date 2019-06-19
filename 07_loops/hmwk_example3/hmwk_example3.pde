//we will be drawing a canvas full of colorful cubes
//altogether they will look like a gradient
//first we creat three floats for the color RGB parameters
float r,g,b;
//because we want to be able to manipulate the color based on the canvas position

void setup(){
  size(600,300);
}

void draw(){
  //we are telling the computer to create a grid of colorful boxes
  // for every column(x), draw a rectangle on every row(y) that's spaced out by 5
  for ( int x = 0; x< width; x+=5){
    for (int y = 0 ; y < height; y+=5){
      r = map(x,0,width, 255,0); // from 0 to width on the x axis, the closer to the 0, the larger the R value
      g = map(y,0,height, 0,255); // from 0 to height on the y axis, the closer to the 0, the smaller the R value
      b = map(mouseX,0,width,0,255); // we use mouseX position to determine the B value. It changes based on where your mouse is on the X axis.
      //now we assign the three variables to fill() function to give rectangles color
      fill(r,g,b); 
      noStroke(); 
      rect(x,y,5,5);
    }
  }
}
