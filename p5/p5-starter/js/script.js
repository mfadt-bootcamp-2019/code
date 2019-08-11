function setup() {
  var canvas = createCanvas(windowWidth / 2, windowHeight);
  canvas.parent("drawingCanvas");
}

function windowResized() {
  resizeCanvas(windowWidth / 2, windowHeight);
}

function draw() {
  background(0);
  fill(255);
  textSize(32);
  text("Welcome to P5 Starter", windowWidth / 4, windowHeight / 2);
}
