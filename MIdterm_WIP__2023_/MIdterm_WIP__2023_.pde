String state = "menu_title";
PImage menu_title, cuisine, french, chinese, japanese, italian;
PImage main, FR, CHI, JPN, ITA;

void setup() {
  size(800, 800);
  imageMode(CENTER);
  
  menu_title = loadImage("images/food_title.png");
  french = loadImage("images/french.png");
  chinese = loadImage("images/chinese.png");
  japanese = loadImage("images/japanese.png");
  italian = loadImage("images/italian.png");
  cuisine = menu_title;
  
  main = loadImage("backgrounds/main.jpg");
  FR = loadImage("backgrounds/FR.jpg");
  CHI = loadImage("backgrounds/CHI.jpg");
  JPN = loadImage("backgrounds/JPN.jpg");
  ITA = loadImage("backgrounds/ITA.jpg");
  
  //image(cuisine, 450, 400);
}

void draw() {
  
 if (state == "menu_title"){
   menu_title();
 } else if (state == "french_page"){
   french_page();
   image(cuisine, 400, 580, width/2, height/2);
 } else if (state == "chinese_page"){
   chinese_page();
   image(cuisine, 400, 580, width/2, height/2);
 } else if (state == "japanese_page"){
   japanese_page();
   image(cuisine, 400, 580, width/2, height/2);
 } else if (state == "italian_page"){
   italian_page();
   image(cuisine, 400, 580, width/2, height/2);
 }
  //image(cuisine, width/2, height/2);
}

void mousePressed() {
  if (state == "menu_title") {
    state = "french_page";
    cuisine = french;
  } else if (state == "french_page") {
    state = "chinese_page";
    cuisine = chinese;
  } else if (state == "chinese_page"){
    state = "japanese_page";
    cuisine = japanese;
  } else if (state == "japanese_page"){
    state = "italian_page";
    cuisine = italian;
  }
}

void menu_title() {
  background(main);
  text("Hello there! Welcome to my fully-fledged Food Cultural SlideShow! \n \nLet's take a quick trip around the world and learn about some of\n the various tasty cuisines from many different cultures!", 200, 200, 200, 160);
}

void french_page(){
  background(FR);
  textSize(16);
  textAlign(CENTER, TOP);
  text("Regarded to some as the best cuisine in the world, it is reknown for being the most highest-class of culinary taste and using the only the most richest and finest of ingredients. \n They're also highly-recognized for their tasty pastries, bread, cheese, and of course wine.", 200, 200, 550, 750);
}

void chinese_page() {
  background(CHI);
  text("Existing for more than a century, Chinese cuisine is known to be one of the most diverse food cultures in the world today. Some of the most well-known traditional foods rice, noodles, dumplings, etc... \n Their ingredients are fresh, having been picked from the green lands amongst the mountainsides of Asia.", 200, 200, 550, 750);
}

void japanese_page() {
  background(JPN);
  text("Highly recognizable today, Japanese cuisine is one of the most essential cuisine ever. \n Mostly known for being eaten with chopsticks instead of the usual fork-and-knife, some of the most notable dishes enjoyed today are usually sushi and tofu. \n Also, not matter whatever else the dish is, one cannot forget the cup of hot green tea on the side as well!", 200, 200, 550, 750);
}

void italian_page() {
  background(ITA);
  text("Do you love pizza? \n Is pasta one of your favorite foods? \n Have a sweet tooth for ice cream? \n Then, you might have a special taste for Italian cuisine, since their most popular dishes consists for their delicious pasta dishes and desserts.", 200, 200, 550, 350);
}
