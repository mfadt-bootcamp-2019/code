float a;

void setup(){
  size(600,300);
}

void draw(){
  for ( int x = 0; x< width; x+=5){
    for (int y = 0 ; y < height; y+=5){
      a = map(x,0,width, 0,255);
      fill(a);
      rect(x,y,5,5);
    }
  }
}
