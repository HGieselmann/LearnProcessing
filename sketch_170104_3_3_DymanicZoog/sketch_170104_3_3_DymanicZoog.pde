// create Zoog for further development.
void setup(){
size(200,200); // Set the Sketch screen Size
frameRate(30);


// Set Ellipse and Rect Modes
ellipseMode(CENTER);
rectMode(CENTER);
}

void draw(){
  // Shorten MouseX Variable
  int mx = mouseX;
  int my = mouseY;
  int px = pmouseX;
  int py = pmouseY;
  background(255); // Set the Sketch BG Color, Reset each Frame
  
// Draw Zoogs Body
  stroke(0);
  fill(150);
  rect(mx,my,20,100);

// Draw Zoogs Head
  fill(255);
  ellipse(mx, my - 30 ,60,60);

// Draw Zoogs Eyes
fill(mouseX,0,mouseY);
ellipse(mx -15, my - 30,16,32);
ellipse(mx + 15,my - 30,16,32);

// Draw Zoogs Legs
stroke(0);
line(mx + 10,my + 50,px + 20,py + 70 );
line(mx - 10,my + 50,px - 20,py + 70);


// Finished Zoog
}