// Colors
color orange = color(239, 96, 48);
color blue = color(105, 184, 223);

int circlesPerLine = 10;

float circleSize = 80;

void setup() {
	size(800, 800);
	noStroke();
}

void draw() {
	background(blue);
	// Loop through all the circles, and update the size of each one
	for (int i = 0; i < circlesPerLine; i++) {
		for (int j = 0; j < circlesPerLine; j++) {
			fill(orange);
			int x = i * width/circlesPerLine + width/circlesPerLine/2;
			int y = j * height/circlesPerLine + height/circlesPerLine/2;
			float sizeX = noise(x, y, float(frameCount)/100.0) * circleSize;
			float sizeY = noise(x, y, float(frameCount)/100.0) * circleSize;
			println(float(frameCount)/100.0);
			ellipse(x, y, sizeX, sizeY);
		}
	}
}
