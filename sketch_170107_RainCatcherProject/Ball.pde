class Ball {
  float r;
  float x, y;
  float xspeed, yspeed ;
  color c = color(100,50);
  
  Ball (float tempR) {
    r = tempR;
    
    x = random(width);
    y = random(height);
    
    xspeed = random(-5, 5);
    yspeed = random(-5, 5);
  }
  
  void move(){ 
    x += xspeed;
    y += yspeed;
    
    // check horizontal edges
    if (x < 0 || x > width) {
      xspeed *= -1;
    }
    
    // check vertical edges
    if (y < 0 || y > height) {
      yspeed *= -1;
    }
  }
  
  
  void highlight(){
    c = color(255,50);
  }
  // Draw the ball
  void display(){
    stroke(0);
    fill(c);
    ellipse(x, y, r*2, r*2);
    c = color(100,50);
  }
  
  
  boolean intersect(Ball b) {
    float distance = dist(x,y,b.x,b.y);
    if (distance < r + b.r) {
      return true;
    } else {
      return false;
    }
  }
}