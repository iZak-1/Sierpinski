float depth = 2;//bigger is less detail


public void setup() {
  size(1000, 1000);
  noStroke();
  background(0);
  fill(255);
  snowflake(width/2,height/2,width/3);
}

public void snowflake(float x, float y, float len) {
  if(len<=depth) {
    ellipse(x,y,len,len);
  } else {
    snowflake(x,y,len/2);
    for(int i = 0; i<6;i++) {
      snowflake(x+(float)(len*Math.cos(i*PI/3)),y+(float)(len*Math.sin(i*PI/3)),len/3);
    }
  }
}
