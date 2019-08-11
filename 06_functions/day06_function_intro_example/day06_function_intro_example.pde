//draw a person shape on the screen
//what if we want to draw multiple on different locations?
//create a function called drawPerson(x,y)


int x1 = 100;
int y1 = 100;
int x2 = 400;
int y2 = 100;
void setup(){

  size(640,360);

}

void draw(){
//draw first person
  drawPerson(x1,y1);
  drawPerson(x2,y2);
}


void drawPerson(int positionX, int positionY){

  circle(positionX,positionY,50);
  line(positionX,positionY+25,positionX,positionY+50);
  line(positionX,positionY+50,positionX-40,positionY+70);
  line(positionX,positionY+50,positionX+40,positionY+70);
  line(positionX, positionY+50,positionX,positionY+100);
  line(positionX,positionY+100,positionX-40,positionY+120);
  line(positionX,positionY+100,positionX+40,positionY+120);

}
