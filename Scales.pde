float r;
float g;
float b;
void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  background(50, 50, 50);
  scale(0, 10);
  scale(25, 25);
  boolean evenRow = true;
  for(int y = -5; y <= 505; y += 15){
    for(int x = 0; x <= 500; x += 50){
      if(evenRow){
        scale(x - 25, y);
      }
      else{
        scale(x, y);
      }
    }
    evenRow = !evenRow;
  }
}
void scale(int x, int y) {
  r = (float)Math.random() * 100 + 50;
  g = r + (float)Math.random() * 5 - 2.5;
  b = r + (float)Math.random() * 5 - 2.5;
  for(float d = 1; d >= 0; d -= 0.05){
    stroke(r, g, b);
    fill(r, g, b);
    r += 3;
    g += 3;
    b += 3;
    beginShape();
    curveVertex(x + 20 - 20 * d, y);
    curveVertex(x + 20 - 20 * d, y);
    curveVertex(x + 20, y + 11 * d);
    curveVertex(x + 20 + 15 * d , y + 8 * d);
    curveVertex(x + 20 + 20 * d, y);
    curveVertex(x + 20 + 15 * d, y - 8 * d);
    curveVertex(x+20, y - 11 * d);
    curveVertex(x + 20 - 20 * d, y);
    curveVertex(x + 20 - 20 * d, y);
    endShape();
    noFill();
  }
}
