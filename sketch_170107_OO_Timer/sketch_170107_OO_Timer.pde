Timer timer;

void setup() {
  size (200,200);
  background(50);
  timer = new Timer(5000);
  timer.start();
}

void draw () {
  if (timer.isFinished()) {
    background(random(255), random(255), random(255));
  }
    
}