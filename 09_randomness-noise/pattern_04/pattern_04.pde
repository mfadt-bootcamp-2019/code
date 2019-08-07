color blue = color(105, 184, 223); // Background color
color orange = color(239, 96, 48); // Stroke color

// Grid size and step variables
int numCols = 10;
int numRows = 10;

void setup() {
  size(800, 800); // Set an 800x800px canvas
  stroke(orange); // orange stroke color
  strokeWeight(10); // thick stroke weight
  noLoop(); // only one draw frame
}

void draw() {
  background(blue);
  float stepX = width / numCols;
  float stepY = height / numRows;
  for (int x = 0; x < width; x += stepX) {
    for (int y = 0; y < height; y += stepY) {
      drawLine(x, y, stepX, stepY);
    }
  }
}

// Custom fxn draws one of two lines when called.
void drawLine(float x, float y, float stepX, float stepY) {
  float rand = random(1);
  if (rand < .5) {
    line(x, y, x + stepX, y + stepY);
  } else if (rand > .5) {
    line(x + stepX, y, x, y + stepY);
  }
}
