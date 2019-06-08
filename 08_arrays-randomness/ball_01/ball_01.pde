float x;
float y = 100;
float directionX = 1;
float directionY = 1;
float incrementerX = 8;
float incrementerY = 6;
int ballSize = 100;

color ballColorStart = color(198, 102, 255);
color ballColorEnd = color(102, 255, 198);

void setup() {
	size(800, 800);
	background(255);
	x = width/2;
	noStroke();
}

void draw() {
	// check if we need to change directions
	if (y > height - ballSize/2 || y < ballSize/2) {
		directionY = directionY * -1;
	}
	if (x > width - ballSize/2 || x < ballSize/2) {
		directionX = directionX * -1;
	}
	// Draw the ball
	background(255);
	fill(ballColorStart);
	// fill(lerpColor(ballColorStart, ballColorEnd, y/height));
	ellipse(x, y, ballSize, ballSize);
	// Change the y and x values
	x = x + incrementerX*directionX;
	y = y + incrementerY*directionY;
}
