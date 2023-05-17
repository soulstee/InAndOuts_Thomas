//This is the class Sphere that the arrays in the main .pde will call upon. This show the display and movement of the assigned shape.

class Sphere{
  color c;
  float x;
  float y;
  float yspeed;

Sphere(color c_, float x_, float y_, float yspeed_){
  c = c_;
  x = x_;
  y = y_;
  yspeed = yspeed_;
}

void display(){
  fill(c);
  noStroke();
  circle(x, y, 100);
}

void soar_S(){
  y = y + yspeed;
  if (y > height){
    y = 0;
  }
 }
}
