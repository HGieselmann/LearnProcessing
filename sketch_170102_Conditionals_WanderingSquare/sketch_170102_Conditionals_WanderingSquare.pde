int x = 0; // Location of the square
int y = 0; // Y location of the square
int square =10;
int speed = 5; // speed of the sqaure

int state = 0; // state of the sqaure

// Initial Canvas setup
void setup () {
  size(200,200);
}

//
void draw() {
  background(50);
  
  // Initializing the sqaure
  noStroke();
  fill(100);
  rect(x,y,square,square);
  
  // Get the State of the Square
  if (state == 0) {
    x = x + speed;
    if ( x > width - square) {
      x = width - square;
      state = 1;
    }
  } else if (state == 1) {
    y = y + speed;
    if (y > height - square){
      y = height - square;
      state = 2;}
  } else if (state == 2) {
    x = x - speed;
    if (x < 0) {
      x = 0;
      state = 3;
    }
  }else if (state == 3 ) {
    y = y-speed;
    if (y < 0) {
      y = 0;
      state = 0;
    }
  }
}