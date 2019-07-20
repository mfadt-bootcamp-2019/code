int rectWidth = 55;
int rectHeight = 55;
color c = color(255,204,0);
boolean isTrue = true;

void setup(){
  size(640, 360);
}

void draw(){
  background(255);
  fill(c);
  rect(mouseX, mouseY, rectWidth, rectHeight);
  
  if(isTrue)
  {
    println("It's True!");
  }else
  {
    println("It's False!");
  }
  
  
}
