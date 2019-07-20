//ask students to make an array of cars and given them different colors movements across the screen.

// An array of 100 Car objects!
Car[] cars = new Car[180]; 

void setup() {
  size(480, 270);
  // Initialize each Car using a for loop.
  for (int i = 0; i < cars.length; i ++ ) { 
    cars[i] = new Car(color(i*2), 0, i*2, i/20.0);
  }
}

void draw() {
  background(255);
  // Run each Car using a for loop.  
  for (int i = 0; i < cars.length; i++) { 
    cars[i].move();
    cars[i].display();
  }
}