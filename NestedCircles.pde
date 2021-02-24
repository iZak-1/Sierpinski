float innerRad = (float)(Math.sqrt(2)+1);

public void setup() {
  size(1000, 1000);
  noStroke();
  background(255);
  nestedCircle(width/2, height/2, width);
}
public void nestedCircle(float x, float y, float len) {
  if (len>=2) {
    //fill((int)(255*Math.random()),(int)(255*Math.random()),(int)(255*Math.random()));
    fill(0,0,0,25);
    ellipse(x, y, len,len);
    for(float i = 0; i<1; i+=0.25) {
      float Angle = i*TAU+PI/4;
      nestedCircle(x+cos(Angle)*(len/2-(len/innerRad)/2), y+sin(Angle)*(len/2-(len/innerRad)/2), len/innerRad);
    }
    //nestedCircle(x+(len/2-(len/innerRad)/2), y, len/innerRad);
    //nestedCircle(x, y-(len/2-(len/innerRad)/2), len/innerRad);
    //nestedCircle(x, y+(len/2-(len/innerRad)/2), len/innerRad);
  }
}
