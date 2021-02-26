float depth = 5;//bigger is less detail
float A=0;

public void setup() {
  size(1000, 1000);
  colorMode(HSB,1.25*ceil(level(depth)),1,1);
  frameRate(50);
}


void draw() {
  A=(2*TAU*60/360)*mouseX/width;
  background(0);
    translate(0,height);
  scale(1,-1);
  tree(width/2,0,width/1.1,A);
}

public void tree(float x, float y, float len, float angle) {
  strokeWeight(ceil(len/50));
  stroke(level(len),1,1);
  line(x,y,x,y+len/2);
  if(len>=depth) {
    pushMatrix();
    translate(x,y+len/2);
    tree(0,0,len/2,angle);
    rotate(-angle);
      tree(0,0,len/2,angle);
    rotate(2*angle);
      tree(0,0,len/2,angle);
    popMatrix();
  }
}

public float level(float len) {
  return log(len/width)/log(0.5);
}
