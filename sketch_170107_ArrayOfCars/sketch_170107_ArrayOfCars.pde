int numberOfCars = 100; // Number of Cars I want to create
// Create an Car Array at the variable cars
Car[] cars = new Car[numberOfCars];

void setup() {
  size(1280, 720);
  
  //initialize all the Cars!
  for (int i = 0; i <cars.length; i++) {
    cars[i] = new Car(color(i*2),0, i*6, i/20.0);
  }
}

void draw() {
  background(50);
  for (int i = 0; i < cars.length; i++) {
    cars[i].move();
    cars[i].display();
  }
}