//Kirby by Thomas Garcia Mena.
size(1080, 720);
background(255); 

//body
stroke (50);
fill (255,204,204);
circle (500,405,400);

//eyes
ellipseMode(RADIUS);
stroke(20);
fill(0);  
ellipse(390, 400, 20, 90);  

ellipseMode(CENTER);
fill(255); 
ellipse(390, 385, 20, 90);

ellipseMode(RADIUS);
stroke(20);
fill(0);
ellipse(600, 400, 20, 90);

ellipseMode(CENTER);
fill(255);
ellipse(600, 385, 20, 90);

//mouth
fill (255, 102, 106);
arc(500, 500, 20, 20, 0, PI+QUARTER_PI, CHORD);

//hands
fill (255,204,204);
ellipse (240, 440, 175, 75);
ellipse (760, 440, 175, 75);

//feet
fill (210, 27, 88);
ellipse (300, 570, 175, 75);
ellipse (690, 570, 175, 75);
