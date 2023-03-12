//Name: Thomas Mena
//Date: 03/09/2023
//Sketch Description: Two arrays: ,One set as "Cube[]" and the other as "Sphere[]", are set to create mutiple streams of shapes to soar acrosss the canvas.
// This sketch was based off the "Array Objects" example from the Learning Processing.com

//Created the Cube and Sphere arrays;
Cube[] cubes = new Cube[100];
Sphere[] spheres = new Sphere[100];

void setup(){
  size(800, 800);
  background(#EDA2C0);
  
  //Initalizes the arrays for loops
  for (int i = 0; i < cubes.length; i++){
    cubes[i] = new Cube(color(#BF9ACA), 0, i*2.5, i/20.0);
  }
  
  for (int i = 0; i < spheres.length; i++){
    spheres[i] = new Sphere(color(#C7E8F3), i*2.5, 0, i/20.0);
  }
}

void draw(){
  background(#EDA2C0);
  
  //Both the Cube and Sphere array will run
  for (int i = 0; i < cubes.length; i++){
    cubes[i].soar_C();
    cubes[i].display();
  }
    for (int i = 0; i < spheres.length; i++){
    spheres[i].soar_S();
    spheres[i].display();
  }
}
