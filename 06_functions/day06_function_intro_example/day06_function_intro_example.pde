//draw a person shape on the screen
//what if we want to draw multiple on different locations?
//create a function called drawPerson(x,y)


int x1 = 100;
int y1 = 100;
//int x2 = 400;
//int y2 = 100;
String x2 = "baby";

void setup(){

  size(640,360);

}


void draw(){
//draw first person
  background(255);
  circle(x1,y1,50);
  line(x1,y1+25,x1,y1+50);
  line(x1,y1+50,x1-40,y1+70);
  line(x1,y1+50,x1+40,y1+70);
  line(x1, y1+50,x1,y1+100);
  line(x1,y1+100,x1-40,y1+120);
  line(x1,y1+100,x1+40,y1+120);
  
  
//draw second person
  drawOneGuy(400,100);
//draw a third guy
  drawOneGuy(mouseX,mouseY);
  drawOneGuy(mouseX +10,mouseY +10);
  
  println(x2);
}

void drawOneGuy(int posX, int posY){
  int x2 = posX;
  int y2 = posY;
  circle(x2,y2,50);
  line(x2,y2+25,x2,y2+50);
  line(x2,y2+50,x2-40,y2+70);
  line(x2,y2+50,x2+40,y2+70);
  line(x2, y2+50,x2,y2+100);
  line(x2,y2+100,x2-40,y2+120);
  line(x2,y2+100,x2+40,y2+120);
}
