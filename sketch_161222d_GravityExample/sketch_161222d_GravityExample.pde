float x = 100;
float y = 0;

float speed = 0;
float gravity = 0.1;

void setup() {
  size(200,200);

}

void draw() {
  background(50);
  float bounce = 0.95;
  fill(200);
  noStroke();
  ellipse (mouseX,y,10,10);
  y = y + speed;
  speed = speed + gravity;
  if (y > height) {
    speed = speed * -bounce;
    y = height;
  }
  
}