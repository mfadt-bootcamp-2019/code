//by default, Processing loads files from "data" folder
//we start with an array of images with 6 spots
PImage[] coins = new PImage[6];
int index = 0;

void setup(){
  size(300,300);
  imageMode(CENTER);
  //we load each image into the array
  for (int i = 0; i < 6; i++){
    coins[i] = loadImage(i+".png");
  }
  frameRate(10);
}

void draw(){
  background(255); 
  //we display each frame by picking the index number
  image(coins[index],width/2,height/2,300,300);
  if (index <= 4) { 
    index ++;   
  } else {
    index = 0;
  }
}
