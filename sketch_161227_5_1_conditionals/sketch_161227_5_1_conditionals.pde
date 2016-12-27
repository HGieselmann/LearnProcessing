/// relational Operators:
/// <> smaller / greater
/// == same / not
/// >= greater or equal <= smaller or equal
float posx = 0;
float posy = 0;
void setup() {
  size(640,360);

}

void draw(){
  background(50);

  posx = posx + 1;
  posy = posy + 1;
  
  if (mouseX >200) {
    background(255,100,0);
  }
  
  if (posx > width-10){
    posx = 0;
  }
    stroke(255);
    line(200,0,200,height);
    
   ellipse(posx,height/2, 20,20);
}