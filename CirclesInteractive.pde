float innerRad = (float)(Math.sqrt(2)+1);;
int i = 0;

public void setup() {
  size(1000, 1000);
  noStroke();
  background(255);
  colorMode(HSB,500,1,1,1);
  
  //nestedCircle(width/2, height/2, width);
}

void draw() {
  nestedCircle(width/2,height/2,width);
}
public void nestedCircle(float x, float y, float len) {
  //float depth = log((len/1000))/log(1/innerRad);
  if (len>=2) {
    //fill(7-depth,1,1);
    fill(dist(mouseX,mouseY,x,y),1,1);
    ellipse(x, y, len,len);
    i++;
    for(float i = 0; i<1; i+=0.25) {
      float Angle = i*TAU+PI/4;
      nestedCircle(x+cos(Angle)*(len/2-(len/innerRad)/2), y+sin(Angle)*(len/2-(len/innerRad)/2), len/innerRad);
    }
  }
}
