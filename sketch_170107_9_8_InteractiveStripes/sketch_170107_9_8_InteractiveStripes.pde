// creating an new Object Stripe at variable stripes
Stripe[] stripes = new Stripe[10];

void setup() {
  frameRate(60);
  size(400,400);
  // Initializing the stripes
  for (int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
  }
}

void draw() {
  background(50);
  for (int i = 0; i < stripes.length; i++) {
    stripes[i].rollover(mouseX, mouseY);
    stripes[i].move();
    stripes[i].display();
  }
}