Zoog zoog;

void setup() {
  size (300,300);
  zoog = new Zoog(100,125,60,60,16);
}

void draw () {
  background(255);
  // mouseX position determines Speed Factor;
  float factor = constrain(mouseX/50, 0,5);
  zoog.jiggle(factor);
  zoog.display();
}