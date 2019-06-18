void setup(){
  size(600,300);
  background(255);
}

void draw(){
  fill(0);
  stroke(1);
  for (int i = 0; i < 30; i ++){
    //example1: draw 30 lines on top of each other
    line(0, 10, width, 10);
    
    //example2: draw 30 lines with equal distance-10
    //line(0, i*10, width, i*10);
    
    //example3: draw equal lines with increasing distance
    //line(0, i*10, width - (i*20), (i * 10));
  }
  
}
