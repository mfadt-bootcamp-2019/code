let font;

function preload() {
  font = loadFont("assets/franklin-gothic-bold.ttf");
}

function setup() {
  var canvas = createCanvas(windowWidth / 2, windowHeight);
  canvas.parent("game");
  // textFont(font, 30);
  textAlign(CENTER);
}

function windowResized() {
  resizeCanvas(windowWidth / 2, windowHeight);
}

function draw() {
  var textContent1 = document.getElementById("typing-area1").value;
  var textContent2 = document.getElementById("typing-area2").value;
  var textContent3 = document.getElementById("typing-area3").value;

  var inputColor = document.querySelector("input[type='color']").value;
  let c = color(inputColor);

  background(0);
  translate(width / 2, height / 2);
  noFill();
  stroke(c);

  circleSentence(textContent1, 200, 30, 200);
  circleSentence(textContent2, 150, 20, 300);
  circleSentence(textContent3, 100, 15, 400);
}

function circleSentence(sentence, r, fontSize, speed) {
  textFont(font, fontSize);
  var size = sentence.length;
  var arclength = 0;
  var space = (2 * PI * r) / size;
  arclength += ((space / 2) * millis()) / speed;

  for (let i = 0; i < size; i++) {
    let currentChar = sentence.charAt(i);

    arclength += space / 2;
    // Angle in radians is the arclength divided by the radius
    var theta = arclength / r;

    push();

    translate(r * sin(theta), r * cos(theta));

    rotate(theta + PI / 2);
    text(currentChar, 0, 0);
    pop();
    // Move halfway again
    arclength += space / 2;
  }
}
