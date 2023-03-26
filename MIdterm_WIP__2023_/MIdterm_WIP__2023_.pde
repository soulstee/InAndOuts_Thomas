import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

AudioPlayer s1, s2, s3, s4, s5, s6, s7, s8, s9;
Minim minim;

String state = "menu_title";
String pages[] = {"one", "two", "three", "four", "five", "six", "seven"};
int index = 0;
PImage menu_title, cuisine, french, chinese, japanese, italian, mexican, indian, irish, american;
PImage main, FR, CHI, JPN, ITA, MEX, IND, IRE, USA;

void setup() {
  size(800, 800);
  imageMode(CENTER);
  
  menu_title = loadImage("images/food_title.png");
  french = loadImage("images/french.png");
  chinese = loadImage("images/chinese.png");
  japanese = loadImage("images/japanese.png");
  italian = loadImage("images/italian.png");
  mexican = loadImage("images/mexican.png");
  indian = loadImage("images/indian.png");
  irish = loadImage("images/irish.png");
  american = loadImage("images/american.png");
  cuisine = menu_title;
  
  main = loadImage("backgrounds/main.jpg");
  FR = loadImage("backgrounds/FR.jpg");
  CHI = loadImage("backgrounds/CHI.jpg");
  JPN = loadImage("backgrounds/JPN.jpg");
  ITA = loadImage("backgrounds/ITA.jpg");
  MEX = loadImage("backgrounds/MEX.jpg");
  IND = loadImage("backgrounds/IND.jpg");
  IRE = loadImage("backgrounds/IRE.jpg");
  USA = loadImage("backgrounds/USA.jpg");
  
  minim = new Minim(this);
  s1 = minim.loadFile("music/main-title_BGM.wav", 2048);
  s2 = minim.loadFile("music/french_BGM.wav", 2048);
  s3 = minim.loadFile("music/chinese_BGM.wav", 2048);
  s4 = minim.loadFile("music/japanese_BGM.wav", 2048);
  s5 = minim.loadFile("music/italian_BGM.wav", 2048);
  s6 = minim.loadFile("music/mexican_BGM.wav", 2048);
  s7 = minim.loadFile("music/indian_BGM.wav", 2048);
  s8 = minim.loadFile("music/irish_BGM.wav", 2048);
  s9 = minim.loadFile("music/american_BGM.wav", 2048);
}

void draw() {
  
 if (state == "menu_title"){
   menu_title();
 } else if (state == "french_page"){
   french_page();  
   image(cuisine, 400, 630, 540, 357);
 } else if (state == "chinese_page"){
   chinese_page();
   image(cuisine, 400, 630, 500, 333);
 } else if (state == "japanese_page"){
   japanese_page();
   image(cuisine, 400, 630, 500, 332);
 } else if (state == "italian_page"){
   italian_page();
   image(cuisine, 400, 630, 500, 375);
 } else if (state == "mexican_page"){
   mexican_page();
   image(cuisine, 400, 630, 500, 400);
 } else if (state == "indian_page"){
   indian_page();
   image(cuisine, 400, 630, 400, 300);
 } else if (state == "irish_page"){
   irish_page();
   image(cuisine, 400, 650, 550, 275);
 } else if (state == "american_page"){
   american_page();
   image(cuisine, 400, 630, 559, 310);
 }
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
  } else if (state == "italian_page"){
    state = "mexican_page";
    cuisine = mexican;
  } else if (state == "mexican_page"){
    state = "indian_page";
    cuisine = indian;
  } else if (state == "indian_page"){
    state = "irish_page";
    cuisine = irish;
  } else if (state == "irish_page"){
    state = "american_page";
    cuisine = american;
  }
}

void keyPressed(){
  if (key == 'r' || key == 'R'){
    index = int(random(pages.length));
  }
    if (index == 0){
      state = "french_page";
      cuisine = french;
    } else if (index == 1){
       state = "chinese_page";
       cuisine = chinese;
    } else if (index == 2){
       state = "japanese_page";
       cuisine = japanese;
    } else if (index == 3){
      state = "italian_page";
      cuisine = italian;
    } else if (index == 4){
      state = "mexican_page";
      cuisine = mexican;
    } else if (index == 5){
      state = "indian_page";
      cuisine = indian;
    } else if (index == 6){
      state = "irish_page";
      cuisine = irish;
    } else if (index == 7){
      state = "american_page";
      cuisine = american;
    }
    println(index);
}

void menu_title() {
  background(main);
  textSize(19);
  textAlign(CENTER, TOP);
  fill(#FFFAFA);
  text("Hello there! Welcome to my fully-fledged Food Cultural SlideShow! \n \nLet's take a quick trip around the world and learn about some of\n the various tasty cuisines from many different cultures! \n \nLeft-Click to Scroll through the pages \n -OR- \n Press the 'R' key to visit a random page" , 200, 200, 400, 450);
  
  s1.play();
  s2.pause();
  s3.pause();
  s4.pause();
  s5.pause();
  s6.pause();
  s7.pause();
  s8.pause();
  s9.pause();
}

void french_page(){
  background(FR);
  text("Regarded to some as the best cuisine in the world, it is reknown for being the most highest-class of culinary taste and using the only the most richest and finest of ingredients. \n They're also highly-recognized for their tasty pastries, bread, cheese, and of course wine.", 200, 200, 550, 750);
 
  s2.play();
  s1.pause();
  s3.pause();
  s4.pause();
  s5.pause();
  s6.pause();
  s7.pause();
  s8.pause();
  s9.pause();
}

void chinese_page() {
  background(CHI);
  text("Existing for more than a century, Chinese cuisine is known to be one of the most diverse food cultures in the world today. Some of the most well-known traditional foods rice, noodles, dumplings, etc... \n Their ingredients are fresh, having been picked from the green lands amongst the mountainsides of Asia.", 200, 200, 550, 750);
  
  s3.play();
  s1.pause();
  s2.pause();
  s4.pause();
  s5.pause();
  s6.pause();
  s7.pause();
  s8.pause();
  s9.pause();
}

void japanese_page() {
  background(JPN);
  text("Highly recognizable today, Japanese cuisine is one of the most essential cuisine ever. \n Mostly known for being eaten with chopsticks instead of the usual fork-and-knife, some of the most notable dishes enjoyed today are usually sushi and tofu. \n Also, not matter whatever else the dish is, one cannot forget the cup of hot green tea on the side as well!", 200, 200, 600, 750);
  
  s4.play();
  s1.pause();
  s2.pause();
  s3.pause();
  s5.pause();
  s6.pause();
  s7.pause();
  s8.pause();
  s9.pause();
}

void italian_page() {
  background(ITA);
  text("Do you love pizza? \n Is pasta one of your favorite foods? \n Have a sweet tooth for ice cream? \n Then, you might have a special taste for Italian cuisine, since their most popular dishes consists for their delicious pasta dishes and desserts.", 200, 200, 550, 350);
  
  s5.play();
  s1.pause();
  s2.pause();
  s3.pause();
  s4.pause();
  s6.pause();
  s7.pause();
  s8.pause();
  s9.pause();
}

void mexican_page(){
  background(MEX);
  text("Not to be confused with Spanish cuisine despite being based of it, \nMexican cuisine of itself is based off of Mesoamerican american and is known for having a strong and spicy taste with almost each dish. \nThat is becuase Mexican cuisine tend to utilize a lot of spices. \nIn addition, unlike Spanish cuisine, Mexican cuisine doesn't use a lot of seafood and instead uses ground meats.", 200, 200, 550, 750);
  
  s6.play();
  s1.pause();
  s2.pause();
  s3.pause();
  s4.pause();
  s5.pause();
  s7.pause();
  s8.pause();
  s9.pause();
}

void indian_page(){
  background(IND);
  text("Spanning back over 5000 years, India's food culture is said to be both highly religious and diversified. \n It consists of many vegetarian dishes, and while it does include meats as well, some religions such as Hinduism & Buddhism forbid the consumption of beef & pork. \n Finally, spices are also considered to be a key ingredient in many Indian cuisines such as turmeric & cumin, as it is used for creating bold and enhancing flavors within a dish.", 200, 200, 575, 650);
  
  s7.play();
  s1.pause();
  s2.pause();
  s3.pause();
  s4.pause();
  s5.pause();
  s6.pause();
  s8.pause();
  s9.pause();
}

void irish_page(){
  background(IRE);
  text("Within the country of Ireland, its food culture is rich and varies based on its history, geography, and climate. \n Potatoes have long been known to be a key ingredient within an Irish diet, as well as beef and lamb being the most popular meats around for a tasty meat stew or sherpard pie. \n In addition, seafood is also popular due to the country's long coastline with oysters and salmon being a high delicacy. \nFinally, if its a refreshing drink that you're in the mood for, then one cannot recommend anything better than a jug of Guinness(dry stout beer)!", 200, 200, 550, 750);
  
  s8.play();
  s1.pause();
  s2.pause();
  s3.pause();
  s4.pause();
  s5.pause();
  s6.pause();
  s7.pause();
  s9.pause();
}

void american_page(){
  background(USA);
  text("What's there to say about American food culture?\n Why a lot, a WHOLE lot to be said that is!\n American food culture is said to be most diverse culture of them all, from many regional cuisines across the country to fusion cuisines.\n Staple dishes such as hamburgers, hot dogs, apple pie, barbecue,\n and who cannot forgot about the various types of fast-food places and convenience-made food for those seeking a quick bite to eat.", 200, 200, 550, 750);
  
  s9.play();
  s1.pause();
  s2.pause();
  s3.pause();
  s4.pause();
  s5.pause();
  s6.pause();
  s7.pause();
  s8.pause();
}

/*
CITATIONS

  IMAGES - FOOD PICTURES
  FRANCE: https://www.thechilworth.co.uk/blog/our-5-favourite-spots-for-french-cuisine-in-london/
  CHINA: https://foodnerdy.com/blog/chinese-cuisine-food-aesthetics/
  JAPAN: https://jw-webmagazine.com/whats-this-in-my-dish-a283aa028328/
  ITALY: https://www.ilcafferifugio.com/a-deep-understanding-of-the-italian-food-culture/
  MEXICO: https://livelazul.com/mexican-food-north-miami/
  INDIA: https://american.expert/how-has-indian-food-culture-influenced-western-cuisine/
  IRELAND: https://www.delish.com/holiday-recipes/g2009/traditional-irish-food/
  AMERICA: http://indianexpress.com/article/lifestyle/food-wine/study-shows-about-40-per-cent-of-food-in-the-us-gets-wasted-4657389/
  
  IMAGES - BACKGROUNDS
  MAIN SKETCH PAGE: https://allaboutmemariana.blogspot.com/2021/06/free-food-background-photos-black-food.html
  FRANCE: https://wallpapercave.com/paris-desktop-wallpaper
  CHINA: https://animate-gif.blogspot.com/2021/03/ancient-china-phone-wallpaper-ancient.html
  JAPAN: https://wallup.net/japan-torii-nature/
  ITALY: https://play.google.com/store/apps/details?id=com.app3dwallpaperhd.italywallpaper
  MEXICO: https://wallpaperaccess.com/mexico-desktop
  INDIA: https://wallpapercave.com/india-wallpaper-desktop
  IRELAND: https://wallpapercave.com/ireland-desktop-backgrounds
  AMERICA: https://wallpaperaccess.com/american-landscape
  
  INFORMATION WEBSITES
  FRANCE: https://xyuandbeyond.com/french-food-culture/
  CHINA: https://www.chinahighlights.com/travelguide/chinese-food/
  JAPAN: https://www.japan-zone.com/culture/food.shtml
  ITALY: https://www.ilcafferifugio.com/a-deep-understanding-of-the-italian-food-culture/
  MEXICO: https://tastessence.com/mexican-food-culture
  INDIA: https://www.culinaryschools.org/international/indian-cuisine.php
  IRELAND: http://www.foodbycountry.com/Germany-to-Japan/Ireland.html
  AMERICA: https://shorelight.com/student-stories/what-is-american-food-and-cuisine/
  
  BACKGROUND MUSIC (The sound player & music was done via the Minim player - https://code.compartmental.net/tools/minim/)
  MAIN PAGE: "Hotel lobby music. Copyright-free music. | no-copyright rhapsody" (https://youtu.be/knr6e77yoFc)
  FRANCE: "French Music No copyright || Musik Paris No copyright" (https://www.youtube.com/watch?v=seKJlHfI-8M)
  CHINA: "Chinese Music - Free To Use [No Cpoyright]" (https://www.youtube.com/watch?v=Q_h7XszYtsw)
  JAPAN: "Japanese beautiful music (No Copyright) "Japanese twilight" [Free BGM]" (https://www.youtube.com/watch?v=waKCsuN7S-4)
  ITALY: "Classic ITALIAN Music [No Copyright Music]" (https://www.youtube.com/watch?v=fl_oj6moR4o)
  MEXICO: "Mexican Food & Cooking - Mariachi Music No Copyright" (https://www.youtube.com/watch?v=KwkIJRCVSSw)
  INDIA: "No Copyright Indian Background Music Indian Classical Beat" (https://www.youtube.com/watch?v=o6rX0ztnlYY)
  IRELAND: "Irish Music(Free copyright)" (https://www.youtube.com/watch?v=kAaSZRSRFJk)
  AMERICA: "Yankee Doodle Instrumentel: American Patriotic Song" (https://www.youtube.com/watch?v=FDlxzC-SvDc)
*/
