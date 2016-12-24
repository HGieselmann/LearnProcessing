// This is Sketch 161220_3_2_java
void setup() {
  size(640, 360);
  background(50, 50, 50);
}
void draw() {
  background(50, 50, 50);
  line (100, 50, 600, 250);
  //Sets the Stroke Color for the Rect to be created
  stroke(255, 255, 255);
  //Set the fill Color of the to be created Rect, A fourth Value would create a Alpha Value
  fill(0, 0, 0);
  // Creates the Rectangle
  rect(mouseX, 180, 50, 50);
}