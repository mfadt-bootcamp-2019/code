//WE DECLARE OUR SPRITE AS A VARIABLE
var greenDude;

//WE LOAD OUR IMAGES IN THE BUILT-IN PRELOAD FUNCTION. 
//THIS HELPS OUR PAGE LOAD FASTER 
function preload(){

lookingRight = loadAnimation('assets/goop1.png', 'assets/goop8.png');
  
}

function setup() {
  var canvas = createCanvas(windowWidth-10, windowHeight/2);
  canvas.parent("drawingCanvas");


//IN SETUP, WE CREATE OUR SPRITE AND GIVE IT A STARTING X, Y, WIDTH, AND HEIGHT
//WE THEN ATTACH OUR PRELOADED ANIMATION TO THE SPRITE
  greenDude = createSprite(width/2, height/2, 100,100);
  greenDude.addAnimation('lookingRight', lookingRight);

}

function windowResized() {
  resizeCanvas(windowWidth-10, windowHeight/2);
}

function draw() {

  background(100,100,200);  

//IN DRAW, THE DRAWSPRITES() FUNCTION ADDS ALL OUR SPRITES TO THE SKETCH
  drawSprites();

//WE CAN USE THE .POSITION PROPERTY TO KEEP TRACK OF WHERE OUR SPRITE IS
//AND WE CAN CHANGE THE .VELOCITY PROPERTY TO MAKE OUR SPRITE MOVE!
//WE CAN ALSO CALL METHODS ON OUR ANIMATION BY WRITING GREENDUDE.ANIMATION.GOTOFRAME() (OR WHATEVER METHOD)

//IF MOUSE IS TO THE RIGHT OF THE SPRITE LOCATION, MOVE SPRITE TO THE RIGHT AND
//ANIMATE THE EYES TOWARD THE RIGHT (FRAME 7)
    if(mouseX > greenDude.position.x +10){
      greenDude.animation.goToFrame(7);
      greenDude.velocity.x = 2;

//IF MOUSE IS TO THE LEFT OF THE SPRITE, MOVE SPRITE TO THE LEFT AND
//ANIMATE THE EYES TOWARD THE LEFT (FRAME 0)
    } else if(mouseX < greenDude.position.x -10){
      greenDude.animation.goToFrame(0);
      greenDude.velocity.x = -2;
      
//IF MOUSE IS ON TOP OF THE SPRITE, SPRITE STOPS MOVING, AND EYES STAY IN THE MIDDLE
    } else {
      greenDude.animation.goToFrame(4);
      greenDude.velocity.x = 0;

    }



}