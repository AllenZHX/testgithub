/**
 * author: Hongxiang Zheng
 * Draw a snowflake curve
*/


void setup() {
  size(600,600);
  frameRate(1);
}

void snow(int x1, int y1, int x2, int y2, int level) {
  if (level == 0 ) {
      line(x1,y1,x2,y2);
  }
  else{
    int distX = x2 - x1;
    int distY = y2 - y1;
    
    int ax = x1 + distX / 3;
    int ay = y1 + distY / 3; 
    int bx = x1 + distX * 2 / 3;
    int by = y1 + distY * 2 / 3;
    int cx = (int)((x1 + x2)/2 + sqrt(3.0)/2 * (y1 - y2)/3.0);
    int cy = (int)((y1 + y2)/2 + sqrt(3.0)/2 * (x2 - x1)/3.0);
   
    level -= 1;
    snow(x1,y1,ax,ay,level);
    snow(ax,ay,cx,cy,level);
    snow(cx,cy,bx,by,level);
    snow(bx,by,x2,y2,level);
  }
}
int level = 0;
void draw() { 
  background(255);
  final int side = (int) (min(width, height) * 0.8);
  final int triangleHeight = (int) (side * sqrt(3.0)/2);
  snow(width / 2, 30,width / 2 - side / 2, 30 + triangleHeight,level);
  snow(width / 2 - side / 2, 30 + triangleHeight,width / 2 + side / 2, 30 + triangleHeight,level);
  snow(width / 2 + side / 2, 30 + triangleHeight,width / 2, 30,level);
  level ++;
  if (level > 6)
    level = 0;
}