float depth = 2;//bigger is less detail


public void setup() {
  size(1000, 1000);
  noStroke();
  rectMode(CENTER);
  background(0);
  fill(255);
  sierpinskiCarpet(width/2,height/2,width/3);
}


public void sierpinskiCarpet(float x, float y, float len) {
  if(len<=depth) {
    //rect(x,y,len/2,len/2);
  } else {
    rect(x,y,len,len,len/10);
    sierpinskiCarpet(x-len, y,     len/3);
    sierpinskiCarpet(x-len, y+len, len/3);
    sierpinskiCarpet(x-len, y-len, len/3);
    sierpinskiCarpet(x+len, y,     len/3);
    sierpinskiCarpet(x+len, y+len, len/3);
    sierpinskiCarpet(x+len, y-len, len/3);
    sierpinskiCarpet(x,     y-len, len/3);
    sierpinskiCarpet(x,     y+len, len/3);
  }
}
