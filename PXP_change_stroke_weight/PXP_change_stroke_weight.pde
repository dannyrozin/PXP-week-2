// The world pixel by pixel 2016
// Daniel Rozin
// grid of rectangles changing color with a sine wave

int cellSize= 8;                  // the size of each element

void setup() {
  size(1000, 800);
}

void draw() {
  background (0);                                       
  for (int x = 0; x < width; x+=cellSize) {
    for (int y = 0; y < height; y+=cellSize) {  
      float newGray= (x+ mouseX)/50.0;             // get a number that correlates to the X position and the mouse X
      newGray= map(sin(newGray),-1,1,0,255);       // get the sinus of the number in order to get a value that has a gratious movement
      fill(newGray);                               // sin() values go from -1 to 1 so we map that to 0 - 255
      rect(x, y, cellSize, cellSize);
    }
  }
}