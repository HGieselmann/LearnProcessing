// Define Zoog Class
class Zoog {
  // Zoogs Variables
  float x, y, w, h, eyes;
  
  // Zoog Constructor
  Zoog (float tempX, float tempY, float tempW, float tempH, float tempeyes) {
  x = tempX;
  y = tempY;
  w = tempW;
  h = tempH;
  eyes = tempeyes;
  }
  
  // Move Zoog
  void jiggle(float speed) {
    // change location of Zoog randomly
    x = x + random (-1,1) * speed;
    y = y + random (-1,1) * speed;
    // Constrain Zoog to window
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }
  // Display Zoog
  void display () {
    // Set ellipsed and Rect to center Mode
    ellipseMode(CENTER);
    rectMode(CENTER);
    
    // Draw arms of zoog
    for ( float i = y-h/3; i < y + h/2; i += 10) {
      stroke (0);
      line(x-w/4, i, x+w/4, i);
    }
    
    // Draw Zoogs Body
    stroke(0);
    fill(175);
    rect(x,y,w/6,h);
    
    // Draw Zoogs Head
    stroke(0);
    fill(255);
    ellipse(x,y-h, w,h);
    
    // Draw the Eyes
    fill(0);
    ellipse(x-w/3,y-h, eyes, eyes);
    ellipse(x + w/3, y-h, eyes, eyes);
    
    // Draw the Legs
    stroke(0);
    line(x - w/12, y + h/2, x - w/4, y + h/2 +10);
    line(x + w/12, y + h/2, x + w/4, y + h/2 +10);
  }
}

    