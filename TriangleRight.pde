float depth = 2;//bigger is less detail


public void setup() {
  size(1000, 1000);
  noStroke();
  background(0);
  fill(255);
  sierpinskiTriangle(0,height,width);
}
public void sierpinskiTriangle(float x, float y, float len) {
  if(len<=depth) {
    triangle(x,y,x+len,y,x,y-len);
  } else {
    sierpinskiTriangle(x,y,len/2);
    sierpinskiTriangle(x+len/2,y,len/2);
    sierpinskiTriangle(x,y-len/2,len/2);
  }
}
