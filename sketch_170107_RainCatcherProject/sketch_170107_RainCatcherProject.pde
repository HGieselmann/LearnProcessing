Catcher catcher;
Timer timer;
Drop[] drops;
int totalDrops = 0;

void setup() {
  frameRate(30);
  size(400,400);
  
  // Create the RainCatcher
  catcher = new Catcher(32);
  drops = new Drop[1000];
  timer = new Timer(300);
  timer.start();
}

void draw () {
  background(50);
  catcher.setLocation(mouseX,mouseY);
  catcher.display();
  
  if (timer.isFinished()) {
    drops[totalDrops] = new Drop();
    totalDrops ++;
    if (totalDrops >= drops.length) {
      totalDrops = 0;
    }
    timer.start();
  }
  for (int i = 0; i < totalDrops; i++) {
    drops[i].move();
    drops[i].display();
    if (catcher.intersect(drops[i])) {
      drops[i].caught();
    }
  }
}
    
  
  class Timer {
  int savedTime;
  int totalTime;
  
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  // Starting the Timer
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
    // Check how much time has passed;
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}