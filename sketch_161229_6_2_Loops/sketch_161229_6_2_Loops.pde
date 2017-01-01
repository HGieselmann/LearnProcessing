float x = 0;
float linex = 0;
float liney = 0;
void setup(){
 size(1280,720); 
}

void draw() {
  background(0);
  x = 0;
  /// For Loop Grid
  for ( int x = 0; x < width; x = x+10) {
   line(x,0,x,height); 
  }
  for (int y = 0; y< height; y = y+10) {
    line(0,y,width, y);
  }
  
  
  /// Draw a grid using a while Loop
  linex = 50;
  while(linex < width) {
    line(linex, 0, linex, height);
    linex = linex + 50;
  }
  liney = 50;
  while (liney < height) {
    line(0, liney, width, liney);
    liney = liney + 50;
  }
  
  /// Mouse Interaction Circles
  while (x < width) {
    if (mouseX < 1){
    x = x + 1;
  } else {
    x = x + mouseX;
  }
  fill(101);
  stroke(255);
  ellipse(x, 150, 16,16);
  }
  
}