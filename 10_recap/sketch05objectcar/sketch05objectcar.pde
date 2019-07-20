//ask students to make a Car class with methods like move and display to draw as it goes across the screen.

Car myCar; // Declare car object as a globle variable.

void setup() {
  size(480, 270);
  // Initialize car object in setup() by calling constructor.
  myCar = new Car();
}

void draw() {
  background(255);
  // Operate Car object in draw() by calling 
  // object methods using the dot syntax.
  myCar.move(); 
  myCar.display();
}

// Define a class outside of setup and draw.
class Car { 
  // Variables.
  color c; 
  float xpos;
  float ypos;
  float xspeed;

  // A constructor.
  Car() { 
    c = color(175);
    xpos = width/2;
    ypos = height/2;
    xspeed = 1;
  }

  // Function.
  void display() { 
    // The car is just a square
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos, ypos, 20, 10);
  }

  // Function.  
  void move() { 
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}