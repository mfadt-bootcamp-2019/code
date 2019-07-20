//ask students to write a distance function to color a circle yellow when the mouse is at its center and white when far away.

void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);

  float d = distance(width/2, height/2, mouseX, mouseY);
  fill(d*3, d*2, d);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 100, 100);
}

float distance(float x1, float y1, float x2, float y2) {
  float dx = x1 - x2;
  float dy = y1 - y2;
  float d = sqrt(dx*dx + dy*dy);
  return d;
}