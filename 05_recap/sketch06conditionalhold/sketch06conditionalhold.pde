//ask students to draw a rect on screen and when mouse is pressed inside that rect, change background color.

boolean button = false;

int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(480, 270); 
}

void draw() {
  // The button is pressed if (mouseX,mouseY) is inside the rectangle and mousePressed is true.
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed) {
    button = true; 
  } else {
    button = false;
  }

 if (button) {
    background(255);
    stroke(0);
  } else {
    background(0);
    stroke(255);
  }
  
  fill(175);
  rect(x,y,w,h);
}