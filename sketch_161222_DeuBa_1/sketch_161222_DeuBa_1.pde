void setup(){
  size(1280,720);
  //colorMode(RGB,100);
  colorMode(HSB,360,100,100);
  background(50);
}

void draw() {
  //Body
  float mouseSpeedX = (abs(mouseX - pmouseX)+abs(mouseY - pmouseY))/2;
  int frame = frameCount;
  if (frameCount > 360) {
    frameCount = 0;
  }
  strokeWeight(1);
  fill(frame,100,100);
  line(pmouseX,pmouseY,mouseX,mouseY);
  //line(pmouseX+mouseSpeedX,pmouseY+mouseSpeedX,mouseX+mouseSpeedX,mouseY+mouseSpeedX);
  //line(pmouseX-mouseSpeedX,pmouseY-mouseSpeedX,mouseX-mouseSpeedX,mouseY-mouseSpeedX);
  rectMode(CENTER);
  rect(mouseX,mouseY, mouseSpeedX,mouseSpeedX);

}
//println(frame);

void mousePressed() {
  background(0,0,random(1,100));
  frameCount = 0;
}