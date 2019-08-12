//WE DECLARE OUR ANIMATION AS A VARIABLE
var greenDude;

//WE LOAD OUR IMAGES IN THE BUILT-IN PRELOAD FUNCTION. 
//THIS HELPS OUR PAGE LOAD FASTER 
function preload(){

//LOAD IMAGES BY PASSING IN THE FIRST AND LAST IMAGE FILE. 
//NAME YOUR IMG FILES SEQUENTIALLY - P5 WILL TRY TO FIND THE IMAGES IN BETWEEN
	greenDude = loadAnimation('assets/goop1.png','assets/goop8.png');

// .PLAYING IS AN ATTRIBUTE OF OUR ANIMATION THAT WORKS LIKE A BOOLEAN
//  BY DEFAULT, IT IS TRUE. WE SET IT TO FALSE SO THAT OUR ANIMATION ISN'T IMMEDIATELY RUNNING  
	greenDude.playing = false;
}

function setup() {
  var canvas = createCanvas(windowWidth-10, windowHeight/2);
  canvas.parent("drawingCanvas");
}

function windowResized() {
  resizeCanvas(windowWidth-10, windowHeight/2);
}

function draw() {

  background(100,100,200);  

//DRAW THE ANIMATION AND GIVE IT AN X AND Y!
//ANIMATION(VARIABLE, X, Y) IS THE FUNCTION WE USE TO DO THIS
  animation(greenDude, width/2, height/2);

//THE ANIMATION WE HAVE LOADED IS A GREEN BLOB MOVING ITS EYES FROM LEFT TO RIGHT
//SO WHEN THE USER PRESSES THE RIGHT ARROW, WE WANT THE ANIMATION TO RUN AS USUAL
    if(keyIsDown(RIGHT_ARROW)){
      greenDude.play(); //.PLAY() IS THE METHOD WE CALL ON THE ANIMATION TO MAKE IT RUN
    }

//WE CHECK IF THE CURRENT FRAME IS THE LAST FRAME TO SEE IF THE ANIMATION IS OVER
//IF IT IS OVER, WE TELL IT TO STOP SO THAT IT DOESN'T REPEAT
    if(greenDude.getFrame()==greenDude.getLastFrame()){
      greenDude.stop();
    }

//IF THE USER PRESSES THE LEFT ARROW, WE WANT THE ANIMATION TO RUN BACKWARDS TO THE FIRST FRAME
    if(keyIsDown(LEFT_ARROW)){
      greenDude.goToFrame(0); //WE USE THE .GOTOFRAME() METHOD TO TELL IT TO GO TO A SPECIFIC FRAME
    }


//ALT CODE: THIS HAS THE ANIMATION SMOOTHLY LOOK BACK AND FORTH AUTOMATICALLY
  // if(greenDude.getFrame()==greenDude.getLastFrame()){
  //   greenDude.goToFrame(0);

  // }

  // if(greenDude.getFrame()==0){
  //   greenDude.play();
  // }

}