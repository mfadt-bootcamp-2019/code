
void setup(){
  size(640, 360);
}


void draw(){
  background(255);
  stroke(0);
  rect(mouseX, mouseY, 55, 55);
  
  if(mousePressed){
    fill(255);
  }else
  {
    fill(0);
  }
}
