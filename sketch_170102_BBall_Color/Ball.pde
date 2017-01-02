class Ball {
  float x;
  float y;
  float xspeed;
  float yspeed;
  float diameter;
  
  Ball( float TempD, float TempX, float TempY) {
    x = TempX;
    y = TempY;
    diameter = TempD;
    fill(random(255),random(255),random(255));
  }
  
  void display() {
    stroke(2);
    ellipse(x, y, diameter,diameter);
  }
  
  void move() {
    x = x = xspeed;
    y = y + yspeed;
  }
  
  void bounce () {
    if (x > width) {
      xspeed = xspeed * -1;
      xspeed = xspeed * random(0.5, 1.5);
      yspeed = yspeed * random(0.5, 1.5);
    }
    if (x < 0) {
      xspeed= xspeed * -1;
      xspeed = xspeed * random(0.5, 1.5);
      yspeed = yspeed * random(0.5, 1.5);
    }
    
    if (y > height) {
      yspeed = yspeed * -1;
      xspeed = xspeed * random(0.5, 1.5);
      yspeed = yspeed * random(0.5, 1.5);
    }
    if (y < 0 ) {
     yspeed = yspeed * -1; 
     xspeed = xspeed * random(0.5, 1.5);
     yspeed = yspeed * random(0.5, 1.5);
    }
    
    
    
  }
}