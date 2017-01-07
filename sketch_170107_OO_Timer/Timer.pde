class Timer {
  int savedTime;
  int totalTime;
  
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
    int PassedTime = millis() - savedTime;
    if (PassedTime > totalTime) {
      savedTime = millis();
      return true;
    } else {
      return false;
    }
  }
}