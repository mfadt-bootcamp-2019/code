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
  noStroke();
  // Toggle guidelines
  // stroke(255);
  fill(orange);
  noLoop();
}

void draw() {
  background(blue);
  float stepX = width / numCols;
  float stepY = height / numRows;
  for (int x = 0; x < width; x += stepX) {
    for (int y = 0; y < height; y += stepY) {
      
      // Toggle guidelines
      // line(x, 0, x, height);
      // line(0, y, width, y);
      
      // Define the possible points for each triangle
      float[][] pts = {{x, y}, {x, y + stepY}, {x + stepX, y + stepY}, {x + stepX, y}};
      
      // Choose a random starting point for the triangle
      int rand = int(random(4));
      
      // Beginning with the random point, find the two consecutive points
      // from our list of triangle points. Together, these three points
      // create a triangle.
      triangle(
        pts[rand][0], pts[rand][1],
        pts[(rand + 1) % 4][0], pts[(rand + 1) % 4][1],
        pts[(rand + 2) % 4][0], pts[(rand + 2) % 4][1]
      );
    }
  }
}
