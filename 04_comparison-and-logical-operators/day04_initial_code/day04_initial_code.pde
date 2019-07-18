color c = color(255, 204, 0);
int rectWidth = 55;
int rectHeight = 55;

void setup(){
  size(640, 360);
}

void draw(){
  boolean isPressed = mousePressed;
  float mX = mouseX;
  float mY = mouseY;
  
  background(255);
  rect(mX, mY, rectWidth, rectHeight);
  
  if(isPressed)
  {
    fill(c);
  }else
  {
   fill(0);
  } 
}
