public void setup() {
  size(1000, 1000);
  noStroke();
  background(0);
  fill(255);
  rectMode(CENTER);
  squares(width/2, height/2, width);
}
public void squares(float x, float y, float len) {
  if (len>=2) {
    rect(x, y, len/2,len/2);
    squares(x-len/4, y-len/4, len/2.05);
    squares(x+len/4, y-len/4, len/2.05);
    squares(x-len/4, y+len/4, len/2.05);
    squares(x+len/4, y+len/4, len/2.05);
  }
}
