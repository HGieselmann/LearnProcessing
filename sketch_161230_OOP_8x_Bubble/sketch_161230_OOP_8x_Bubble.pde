// creating Bubble "b"
/*Bubble b1;
Bubble b2;
Bubble b3;
*/
Bubble[] bubbles = new Bubble [10];


void setup () {
  frameRate(30);
  size (1280, 720);
  // defining a new Object Bubble at variable b
for (int i = 0; i < bubbles.length; i++) {
  bubbles [i] = new Bubble(10,10,10);
}
}

void draw() {
  background(50);
  
  /*if (b1.x < width/2 && b1.y < height/2) {
    fill(255,0,0,255/3);
    noStroke();  
    rect(0,0,width/2,height/2);
  }*/
  
  bubbles[0].display();
  bubbles[0].ascend();
  bubbles[0].bounce();
  bubbles[0].safety();
  
  /*
  b2.display();
  b2.ascend();
  b2.bounce();
  b2.safety();
  
  b3.display();
  b3.ascend();
  b3.bounce();
  b3.safety();
  */

}
/*
void mousePressed() {
  b1.colorize();
  b2.colorize();
  b3.colorize();
}
*/