float a;
float r,g,b;

void setup(){
  size(600,300);
}

void draw(){
  for ( int x = 0; x< width; x+=5){
    for (int y = 0 ; y < height; y+=5){
      r = map(x,0,width, 255,0);
      g = map(y,0,height, 0,255);
      b = map(mouseX,0,width,0,255);
      fill(r,g,b);
      noStroke();
      rect(x,y,5,5);
    }
  }
}
