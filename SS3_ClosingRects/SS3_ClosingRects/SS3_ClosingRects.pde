//Name: Thomas Garcia Mena
//Date: 02/22/23

float n;

void setup() {
  size(800, 800);
  n = height/2;
}

void draw () {
//Rollover Code: Changing the background color between teal and magenta depending on the mouse position
  if (mouseX < 400 && mouseY < 400) {
    background(#00FFFF);
  } else if (mouseX > 400 && mouseY > 400) {
    background(#FF00FF);
 } else {
   background(51);
}

//Conditional Statements & For Loops Code: A For Loop code is created to design the square rows. The width of the row of squares whill continue to shrink until it resets. When pressing any key, 
//the height of the square row will also shrink as well.
  for(int i=50; i<width; i+=100){
    rect(i, i, width/2, n);
  }
  
  n = n - 0.5;
  if (n < 0) {
   n = height;
  } else if (keyPressed == true) {
    for(int i=50; i<height; i+=100){
      rect(i, i, n, height/2);
   }
  }
}
