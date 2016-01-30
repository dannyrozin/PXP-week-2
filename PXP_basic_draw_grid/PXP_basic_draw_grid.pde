// The world pixel by pixel 2016
// Daniel Rozin
// just make a basic grid

int cellSize= 20;                  // the size of each element

void setup(){
 size(1000, 800);
}

void draw(){
  background (255);
  for (int x = 0; x < width ; x+=cellSize){
     for (int y = 0; y < height ; y+=cellSize){
       fill(x,second(),mouseX);            // give it some color and interactivilty
       rect(x,y,cellSize,cellSize);
     }
  }  
}