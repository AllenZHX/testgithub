/**
 * author: Hongxiang Zheng
 * plot sin(x) + 1/3 * sin(3*x) + 1/5 * sin(5*x) +1/7 * sin(7*x) + 1/9 * sin(9*x);
*/


void setup() {
  size(600,600);
} 

void draw() {
  translate(width/2, height/2);
  scale(width/2/(10*PI), -height/2);
  strokeWeight(0.02);
  float dx = PI/width;
  for (float x = 0; x < 10*PI; x += dx) {
    float y = sin(x) + 1f/3 * sin(3*x) + 1f/5 * sin(5*x) + 1f/7 * sin(7*x) + 1f/9 * sin(9*x);
    
    point(x,y);
    
  }
  
}