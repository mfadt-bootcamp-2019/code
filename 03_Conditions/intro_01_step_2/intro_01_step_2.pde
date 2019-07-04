int x;
int y;

boolean isPressed;

color c = color(255,125,89);

void setup(){
  size(640, 360);
}


void draw(){
  x = mouseX;
  y = mouseY;
  isPressed = mousePressed;
  background(255);
  stroke(0);
  rect(x, y, 55, 55);
  
  if(isPressed){
    fill(255);
  }else
  {
    fill(c);
  }
}
