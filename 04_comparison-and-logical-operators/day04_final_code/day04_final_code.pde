color c = color(255, 204, 0);
color blue = color(0,255,255);
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
  line(320,0,320,360);
  line(0,180,640,180);
  
  if(mX<=320 && mY<=180 || mX>= 320 && mY >=180)
  {
    fill(c);
    
    if(isPressed)
    {
      fill(blue);
    }
    
  }else
  {
   fill(0);
  } 
}
