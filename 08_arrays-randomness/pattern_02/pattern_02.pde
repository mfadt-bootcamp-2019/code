// Start with some nice colors :)
color orange = color(239, 96, 48);
color blue = color(105, 184, 223);

int triangleSize = 100;

// Create a 2D array of points that can form the vertices of our triangle
int[][] trianglePoints = {{0, 0}, {0, triangleSize}, {triangleSize, triangleSize}, {triangleSize, 0}};

void setup() {
	size(800, 800);
	background(blue);
	noStroke();
	noLoop();
}

void draw() {
	for (int i = 0; i < width/triangleSize; i++) {
		for (int j = 0; j < height/triangleSize; j++) {
			int rand = int(random(4));
			fill(orange);
			// We draw a triangle by starting with a random vertex, and then picking the next two vertices in the array
			// as the other vertices of our triangle
			triangle(trianglePoints[rand][0] + i * triangleSize, trianglePoints[rand][1] + j * triangleSize, trianglePoints[(rand + 1) % 4][0] + i * triangleSize, trianglePoints[(rand + 1) % 4][1] + j * triangleSize, trianglePoints[(rand + 2) % 4][0] + i * triangleSize, trianglePoints[(rand + 2) % 4][1] + j * triangleSize);
		}
	}
}
