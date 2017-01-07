Car myCar1;
Car myCar2;

void setup() {
  size(200,200);
  
  // Initialize Car Object
  myCar1 = new Car(color(255), width/2, height/4, 2);
  myCar2 = new Car(color(0), width/3, height/2, 1);
}

void draw () {
  background(255);
  // operate Car Object 
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
  
}