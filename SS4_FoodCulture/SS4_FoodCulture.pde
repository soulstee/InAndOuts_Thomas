//Name: Thomas
//Date: 03/02/2023
//Sketch Description: A slideshow that describes a different food culture within each page. An image from the array can be selected by pressing one of the Number Keys between 1 and 5.

PImage food_title;
PImage cuisine; 
PImage french; 
PImage chinese; 
PImage japanese; 
PImage italian; 
PImage mexican;

void setup () {
  size(800, 800);
  imageMode(CENTER);

  PFont title;
  title = createFont("font/PomorskyUnicode.ttf", 24);
  textFont(title);
  text("Hi, and welcome to my own little Food Cultural Page! Press a number between 1-5 to view a short little description about a certain type of cultural cuisine from across the world!", 200, 100, 400, 400);
  
  food_title = loadImage("images/food_title.png");
  french = loadImage("images/french.png");
  chinese = loadImage("images/chinese.png");
  japanese = loadImage("images/japanese.png");
  italian = loadImage("images/italian.png");
  mexican = loadImage("images/mexican.png");
  cuisine = food_title;
}

void draw() {
  image(food_title, width/2, height/2);
}

void keyPressed() {
  if (key == '1'){
    
   PFont info;
   info = createFont("font/PomorskyUnicode.tff", 48);
   textFont(info);
   text("Regarded to some as the best cuisine in the world, it is reknown for being the most highest-class of culinary taste and using the only the most richest and finest of ingredients. They're also highly-recognized for their tasty pastries, bread, cheese, and of course wine.", 200, 100, 400, 400);
   
   cuisine = french;
  }else if (key == '2'){
    
   cuisine = chinese;
   
   PFont info;
   info = createFont("font/PomorskyUnicode.tff", 48);
   textFont(info);
   text("Existing for more than a century, Chinese cuisine is known to be one of the most diverse food cultures in the world today. Some of the most well-known traditional foods rice, noodles, dumplings, etc...; Their ingredients are fresh, having been picked from the green lands amongst the mountainsides of Asia", 200, 100, 400, 400); 
   
  }else if (key =='3'){
    
   cuisine = japanese;
   
   PFont info;
   info = createFont("font/PomorskyUnicode.tff", 48);
   textFont(info);
   text("Highly recognizable today, Japanese cuisine is one of the most essential cuisine ever. Mostly known for being eaten with chopsticks instead of the usual fork-and-knife, some of the most notable dishes enjoyed today are usually sushi and tofu. Also, not matter whatever else the dish is, one cannot forget the cup of hot green tea on the side as well", 200, 100, 400, 400); 
   
  } else if (key == '4'){
    
   cuisine = italian;
   
   PFont info;
   info = createFont("font/PomorskyUnicode.tff", 48);
   textFont(info);
   text("Do you love pizza? Is pasta one of your favorite foods? Have a sweet tooth for ice cream? Then, you might have a special taste for Italian cuisine, since their most popular dishes consists for their delicious pasta dishes and desserts.", 200, 100, 400, 400); 
   
  } else if (key == '5'){
    
   cuisine = mexican;;
   
   PFont info;
   info = createFont("font/PomorskyUnicode.tff", 48);
   textFont(info);
   text("Not to be confused with Spanish cuisine despite being based of it, Mexican cuisine of itself is based off of Mesoamerican american and is known for having a strong and spicy taste with almost each dish. That is becuase Mexican cuisine tend to utilize a lot of spices. In addition, unlike Spanish cuisine, Mexican cuisine doesn't use a lot of seafood but land meat such as your typical beef, chicken, and pork. ", 200, 100, 400, 400);
  }
}
