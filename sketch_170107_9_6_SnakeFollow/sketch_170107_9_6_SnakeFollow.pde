int trailLength = 50; // length of the Trail I want to create
int bgclr = 50;
// Declare Arrays
int[] xpos = new int[trailLength];
int[] ypos = new int[trailLength];

void setup() {
  size(400,400);
  frameRate(60);
  // initialize all Array Positions to 0, because at the beginning there is no MousePosition Data
  for (int i = 0; i<xpos.length; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}
void draw() {
  background(bgclr);
  
  // Shifting the Array by one each time through Draw
  for (int i = 0; i < xpos.length-1; i++) {
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  // Setting the Mouse Position in the Last spot of the Array
  xpos[xpos.length -1] = mouseX;
  ypos[ypos.length -1] = mouseY;
  
  for (int i = 0; i <xpos.length; i++) {
    noStroke();
    float r = i*5;
    constrain(r,bgclr,255);
    fill (r,bgclr,bgclr);
    ellipse(xpos[i], ypos[i], i, i);
  }
}