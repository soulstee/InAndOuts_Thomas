//Name: Thomas
//Date: 03/02/2023
//Sketch Description: A slideshow that describes a different food culture within each page. An image from the array can be selected by pressing one of the Number Keys between 1 and 5.

PImage food_title, cuisine, french, chinese, japanese, italian, mexican;
String S; 

void setup () {
  size(800, 800);
  background(51);
  imageMode(CENTER);
  
  PFont title;
  title = createFont("font/PomorskyUnicode.ttf", 24);
  textFont(title);
  S = "Hi, and welcome to my own little Food Cultural Page! Press a number between 1-5 to view a short little description about a certain type of cultural cuisine from across the world!";
  
  food_title = loadImage("images/food_title.png");
  french = loadImage("images/french.png");
  chinese = loadImage("images/chinese.png");
  japanese = loadImage("images/japanese.png");
  italian = loadImage("images/italian.png");
  mexican = loadImage("images/mexican.png");
  cuisine = food_title;
  
  image(cuisine, 400, 450);
}

void draw() { //This will show the title page of sketch.
  background(51);
  text(S, 200, 100, 400, 400);
  image(cuisine, 400, 580);
}

void keyPressed(){ //When pressing a number between 1-5, the image and text will switch.
    if (key == '1'){
    
   S = "Regarded to some as the best cuisine in the world, it is reknown for being the most highest-class of culinary taste and using the only the most richest and finest of ingredients. They're also highly-recognized for their tasty pastries, bread, cheese, and of course wine.";
   
   cuisine = french;
   
  }else if (key == '2'){
   
   S = "Existing for more than a century, Chinese cuisine is known to be one of the most diverse food cultures in the world today. Some of the most well-known traditional foods rice, noodles, dumplings, etc...; Their ingredients are fresh, having been picked from the green lands amongst the mountainsides of Asia."; 
   
   cuisine = chinese;
   
  }else if (key =='3'){
   
   S = "Highly recognizable today, Japanese cuisine is one of the most essential cuisine ever. Mostly known for being eaten with chopsticks instead of the usual fork-and-knife, some of the most notable dishes enjoyed today are usually sushi and tofu. Also, not matter whatever else the dish is, one cannot forget the cup of hot green tea on the side as well!"; 
   
   cuisine = japanese;
   
  } else if (key == '4'){
   
   S = "Do you love pizza? Is pasta one of your favorite foods? Have a sweet tooth for ice cream? Then, you might have a special taste for Italian cuisine, since their most popular dishes consists for their delicious pasta dishes and desserts."; 
   
   cuisine = italian;
   
  } else if (key == '5'){
   
   S = "Not to be confused with Spanish cuisine despite being based of it, Mexican cuisine of itself is based off of Mesoamerican american and is known for having a strong and spicy taste with almost each dish. That is becuase Mexican cuisine tend to utilize a lot of spices. In addition, unlike Spanish cuisine, Mexican cuisine doesn't use a lot of seafood and instead uses ground meats.";
   
   cuisine = mexican;
  }
}
