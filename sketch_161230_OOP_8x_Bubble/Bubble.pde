class Bubble {
  
  float x;
  float y;
  float xspeed = 10;
  float yspeed = 10;
  float diameter;
  
  // This is the Constructor, here we define the starting point
  // This needs to matc the Class Name!!!
  Bubble(float TempD, float TempX, float TempY) {
    x = TempX;
    y = TempY;
    fill(255);
    diameter = TempD;
  }
  void display () {
    stroke (0);
    //strokeWidth(2);
    
    ellipse(x, y, diameter, diameter);
    }
  
  void ascend() {
    x = x + xspeed;
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
  
  void colorize () {
    fill(random(0,255));
  }
  
  void lineDown () {
    stroke(2);
    line(0,height/2,width,height/2);
  }
    
  
  void lineUp () {
    if (xspeed > 0) {
    stroke(2);
    line(0,height/2,width,height/2);
    }
  }
  void safety () {
    if (xspeed < 0.1 && xspeed > -0.1) {
      newSpeed();
    }
    if (yspeed < 0.1 && yspeed > -0.1) {
     newSpeed();
    }
  }

}

float newSpeed() {
  float xspeed = random(-2,2);
  float yspeed = random(-2,2);
  return (xspeed, yspeed);
  
}