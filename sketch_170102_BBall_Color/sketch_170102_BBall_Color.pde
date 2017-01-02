float c1 = 0;
float c2 = 255;

float c1Change = 1;
float c2Change = -1;

Ball[] ball = new Ball[10];


void setup() {
  size(400,400);
  for (int i = 0; i < ball.length; i++) {
    ball [i] = new Ball(random(10),random(200),random(200));
  }
  
}

void draw () {
  
  for (int i = 0; i < ball.length; i++) {
    ball[i].display;
    ball[i].move;
    ball[i].bounce;
  }
    
  noStroke();
  
  // Draw rectangle on left
  fill(c1,0,c1);
  rect(0,0,width/2,height);
  
  //Draw rectangle on right
  fill(c2,0,c1);
  rect(200,0,width/2,height);
  
  //Calculate Changes
  c1 = c1 + c1Change;
  c2 = c2 + c2Change;
  
  // Reverse Colour Change
  if (c1 < 0 || c1 > 255) {
    c1Change *= -1;
  }
  if (c2 < 0 || c2 > 255) {
    c2Change *= -1;
  }
  


}