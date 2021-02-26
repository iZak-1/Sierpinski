float depth = 20;//bigger is less detail
float A=0;

public void setup() {
  size(1000, 1000);
  
  colorMode(HSB,1.25*ceil(level(depth)),1,1);
  //colorMode(HSB,1.25*width/2,1,1);
  frameRate(50);
}


void draw() {
  A=PI*mouseX/width;
  background(0);
    translate(0,height);
  scale(1,-1);
  tree(width/2,height/10,width/1.1,A);
}

public void tree(float x, float y, float len, float angle) {
  strokeWeight(ceil(len/50));
  
  stroke(level(len),1,1);
  //stroke(len,1,1);
  
  line(x,y,x,y+len/3.5);
  if(len>=depth) {
    pushMatrix();
    translate(x,y+len/3.5);
    rotate(-angle);
      tree(0,0,len/1.4,angle);
    rotate(2*angle);
      tree(0,0,len/1.4,angle);
    popMatrix();
  }
}

public float level(float len) {
  return log(len/width)/log(1/1.4);
}
