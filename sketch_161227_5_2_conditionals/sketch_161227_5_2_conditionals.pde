/// relational Operators:
/// <> smaller / greater
/// == same / not
/// >= greater or equal <= smaller or equal
/// && AND
/// || Or
/// ! NOT
float posx = 0;
float posy = 0;
void setup() {
  size(640,360);

}

void draw(){
  background(255);

  posx = posx + 1;
  posy = posy + 1;
  
  /// Top Left
  if (mouseX < width/2 && mouseY < height/2) {
    background(255,100,0);
  } 
  /// Lower Left
  else if (mouseX < width/2 && mouseY > height/2 ) {
    background(100,255,0);
  }  
  /// Upper Right
  else if (mouseX > width/2 && mouseY < height/2) {
    background(0,255,100);
  }
  /// Lower Right
  else if (mouseX > width/2 && mouseY > height/2) {
    background(0,200,255);
  }

    stroke(255);
    line(width/2,0,width/2,height);
    line(0,height /2,width,height/2);
    
   ellipse(posx,height/2, 20,20);
}