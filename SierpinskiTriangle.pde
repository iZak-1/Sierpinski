int depth = 3;//bigger is less detail
//I have a few different shapes you can make.


public void setup() {
  size(1000, 1000);
  noStroke();
  noLoop();
  rectMode(CENTER);
  background(0);
  fill(255);
}

public void draw() {
  sierpinskiHex(width/2,height/2,width/3);
}

public void sierpinskiTriangle(float x, float y, float len) {
  if(len<=depth) {
    triangle(x,y,x+len,y,x+len/2,y+len*(float)Math.sqrt(3)/2);
  } else {
    sierpinskiTriangle(x,y,len/2);
    sierpinskiTriangle(x+len/2,y,len/2);
    sierpinskiTriangle(x+len/4,y+(float)(len*Math.sqrt(3)/2)/2,len/2);
  }
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

public void sierpinskiHex(float x, float y, float len) {
  if(len<=depth) {
    ellipse(x,y,len,len);
  } else {
    sierpinskiHex(x,y,len/3);
    for(int i = 0; i<6;i++) {
      sierpinskiHex(x+(float)(len*Math.cos(i*PI/3)),y+(float)(len*Math.sin(i*PI/3)),len/3);
    }
  }
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
