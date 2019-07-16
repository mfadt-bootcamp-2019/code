// Standardizing the incrementer and the sizes
float incrementer = 8;
int ballSize = 20;
// Standard array size
int arraySize = 100;
// Using arrays to keep track of the positions and directions
float[] xPositions = new float[arraySize];
float[] yPositions = new float[arraySize];
float[] xDirections = new float[arraySize];
float[] yDirections = new float[arraySize];

color ballColorStart = color(198, 102, 255);
color ballColorEnd = color(102, 255, 198);

void setup() {
	size(800, 800);
	background(255);
	noStroke();
	for (int i = 0; i < arraySize; i++) {
		xPositions[i] = 100;
		yPositions[i] = 100;
		xDirections[i] = 1;
		yDirections[i] = 1;
	}
}

void draw() {
	background(255);
	for (int i = 0; i < arraySize; i++) {
		// check if we need to change directions
		if (yPositions[i] > height - ballSize/2 || yPositions[i] < ballSize/2) {
			yDirections[i] = yDirections[i] * -1;
		}
		if (xPositions[i] > width - ballSize/2 || xPositions[i] < ballSize/2) {
			xDirections[i] = xDirections[i] * -1;
		}
		// Draw the ball
		// fill(lerpColor(ballColorStart, ballColorEnd, yPositions[i]/height));
		fill(ballColorStart);
		ellipse(xPositions[i], yPositions[i], ballSize, ballSize);
		// Change the y and x values
		xPositions[i] = xPositions[i] + incrementer*xDirections[i];
		yPositions[i] = yPositions[i] + incrementer*yDirections[i];
	}
}
