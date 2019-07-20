//based on day2 intro 02 code
//use UP DOWN LEFT RIGHT key to modify the position of rect.


float x1 = 100;
float y1 = 100;

void setup(){
  size(640, 360);
}


void draw(){
  background(255);
  fill(0);
  rect(x1, y1, 55, 55);
  
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      y1 -= 10;
    }else if(keyCode == DOWN){
      y1 += 10;
    }else if(keyCode == LEFT){
      x1 -= 10;
    }else if(keyCode == RIGHT){
      x1 += 10;
    }
  }
}
