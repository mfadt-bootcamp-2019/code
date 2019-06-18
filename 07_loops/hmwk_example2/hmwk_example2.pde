void setup(){

  
   size(510, 360);
}

void draw(){

  for(int i = 0; i < 51; i++){
    fill(i * 5);
    //noStroke();
    rect(i * width/51, 0, width/51, height);
  }

}
