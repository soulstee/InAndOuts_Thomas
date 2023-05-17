//This is the class Cube that the arrays in the main .pde will call upon. This show the display and movement of the assigned shape.

class Cube{
  color c;
  float x;
  float y;
  float xspeed;

Cube(color c_, float x_, float y_, float xspeed_){
  c = c_;
  x = x_;
  y = y_;
  xspeed = xspeed_;
}

void display(){
  fill(c);
  noStroke();
  rect(x, y, 100, 100, 20);
}

void soar_C(){
  x = x + xspeed;
  if (x > width){
    x = 0;
  }
 }
}
