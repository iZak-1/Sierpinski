public void setup() {
  size(1000, 1000);
  noStroke();
  background(0);
  fill(255);
  rectMode(CENTER);
  squares(width/2,height/2,width);
}
public void squares(float x, float y, float len) {
  if(len>=1) {
    square(x,y,len/2);
    for(int i = 0; i<4; i++) { squares((x-len/4)+(i/2)*len/2,(y-len/4)+(i%2)*len/2,len/2.05); } //just a shorter way of making calling it in each corner
  }
}
