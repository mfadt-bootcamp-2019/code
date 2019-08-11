let font;
let r = 200;

function preload() {
  font = loadFont("assets/franklin-gothic-bold.ttf");
}

function setup() {
  var canvas = createCanvas(windowWidth / 2, windowHeight);
  canvas.parent("game");
  textFont(font, 30);
  textAlign(CENTER);
}

function windowResized() {
  resizeCanvas(windowWidth / 2, windowHeight);
}

function draw() {
  var textContent = "Wish you happy birthday!!!!!!!!";

  background(0);
  translate(width / 2, height / 2);
  noFill();
  stroke(255);
  var size = textContent.length;
  var arclength = 0;
  var space = (2 * PI * r) / size;
  arclength += ((space / 2) * millis()) / 200;

  for (let i = 0; i < size; i++) {
    let currentChar = textContent.charAt(i);
    // let w = textWidth(currentChar) + space;
    arclength += space / 2;
    // Angle in radians is the arclength divided by the radius
    var theta = arclength / r;

    push();
    // Polar to cartesian coordinate conversion
    translate(r * cos(theta), r * sin(theta));
    // Rotate the box
    rotate(theta + PI / 2);
    text(currentChar, 0, 0);
    pop();
    // Move halfway again
    arclength += space / 2;
  }
}
