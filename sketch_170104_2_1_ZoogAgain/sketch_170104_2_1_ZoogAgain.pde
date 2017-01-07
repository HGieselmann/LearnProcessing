// create Zoog for further development.

size(200,200); // Set the Sketch screen Size
background(255); // Set the Sketch BG Color

// Set Ellipse and Rect Modes
ellipseMode(CENTER);
rectMode(CENTER);

// Draw Zoogs Body
stroke(0);
fill(150);
rect(100,100,20,100);

// Draw Zoogs Head
fill(255);
ellipse(100,70,60,60);

// Draw Zoogs Eyes
fill(0);
ellipse(81,70,16,32);
ellipse(119,70,16,32);

// Draw Zoogs Legs
stroke(0);
line(90,150,80,160);
line(110,150,120,160);

// Finished Zoog