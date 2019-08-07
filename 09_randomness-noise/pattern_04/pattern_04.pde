// Background color
color blue = color(105, 184, 223);
color orange = color(239, 96, 48);

// Grid size and step variables
int numCols = 10;
int numRows = 10;

void setup() {
  // Set an 800x800px canvas with a blue background
  size(800, 800);
  background(blue);
  stroke(orange);
  strokeWeight(5);
  noLoop();
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


void drawLine(float x, float y, float stepX, float stepY) {
  float rand = random(1);
  if (rand < .5) {
    line(x, y, x + stepX, y + stepY);
  } else if (rand > .5) {
    line(x + stepX, y, x, y + stepY);
  }
}
