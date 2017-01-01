/// relational Operators:
/// <> smaller / greater
/// == same / not
/// >= greater or equal <= smaller or equal
/// && AND
/// || Or
/// ! NOT

/// Initial Values ///
float posx;
float posy = height/2;
float xspeed = 4;
float yspeed = 4;
float circlew = 20;
float circleh = 20;
float vary = 1;
int bgcolor;


void setup() {
  size(640,360);

}

void draw() {
  background(bgcolor);
  
  posx = posx + xspeed * vary;
  posy = posy + yspeed * vary;
  ///posy = posy +xspeed* vary;
  ellipse(posx,posy,circlew,circleh);
  
  if (posx > width-circlew/2){
    xspeed = xspeed * -1;
    vary = random(0.1,1);
    bgcolor = int(random(0,255));
  } else if (posx < 0) {
    xspeed = xspeed * -1;
    vary = random(0.1,1);
    bgcolor = int(random(0,255));
  }
  if (posy < 0 ){
    yspeed = yspeed * -1;
    vary = random(0.1,1);
    bgcolor = int(random(0,255));
  }
  else if (posy > height) {
    yspeed = yspeed * -1;
    vary = random(0.1,1);
    bgcolor = int(random(0,255));
  }
  


}