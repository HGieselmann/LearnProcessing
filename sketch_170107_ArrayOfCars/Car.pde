class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car (color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos ;
    xspeed = tempXspeed;
  }
  
  void display() {
    // The Car is just a square.
    rectMode(CENTER);
    fill(c);
    rect(xpos,ypos,20,10);
  }
  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xspeed = xspeed *-1;
    } else if ( xpos < 0 ) {
      xspeed = xspeed * -1;
    }
  }
}