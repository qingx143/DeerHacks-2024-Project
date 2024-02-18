int mode = 0;
final int INTRO = 1;
final int MAIN = 2;
final int WORK = 3;
final int GAMEOVER = 4;
final int BOOK = 5;
final int SHOP = 6;
final int ANIMATION = 7;

// images -------------------------------------------------------------------------------
PImage homeBackground;
PImage catImage;
PImage taxBook;
PImage chipiCoin;
PImage coffeeMachine;
PImage coffeeCup;
PImage taxFacts1;
PImage taxFacts2;
PImage CatBed;
PImage CatBox;
PImage GumballMachine;
PImage BarbieCat;
PImage Catcus;
PImage Ferg;
PImage driving1;
PImage driving2;

// colours ------------------------------------------------------------------------------
color backColour = color(227, 194, 160);
color textColour = color(134, 104, 73);
color homeColour = #FFF9ED;
color buttonColour = #A78458;

int day = 1;
int chipiCount = 20;

float rate = 1.20;
float deposit_amount = 0;
int term_day = 0;

boolean workPerDay = false;

int pageCount = 1;

// bools   ------------------------------------------------------------------------------
boolean watermelonClicker = true;
boolean boxClicker = true;
boolean gumballClicker = true;
boolean barbieClicker = true;
boolean catcusClicker = true;
boolean frogClicker = true;
// others  ------------------------------------------------------------------------------
PFont mainFont;

void setup() {
  size(800, 600);
  background(backColour);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  strokeWeight(3);
  
  // initalise variables
  mainFont = createFont("Catways.otf", 100);
  mode = MAIN;
  
  homeBackground = loadImage("CatHomeBackground.png");
  catImage = loadImage("catImage.png");
  taxBook = loadImage("TaxBook.PNG");
  chipiCoin = loadImage("ChipiCoin.png");
  coffeeMachine = loadImage("CoffeeMachine.png");
  coffeeCup = loadImage("CoffeeCup.png");
  taxFacts1 = loadImage("TaxFacts1.png");
  taxFacts2 = loadImage("TaxFacts2.png");
  CatBed = loadImage("catSoftBed.png");
  CatBox = loadImage("CatBox.png");
  GumballMachine = loadImage("GumballMachine.png");
  BarbieCat = loadImage("pinkCat.png");
  Catcus = loadImage("Catcus.png");
  Ferg = loadImage("Ferg.png");
  driving1 = loadImage("CatDriving1.png");
  driving2 = loadImage("CatDriving2.png");
}
    
void draw() {
  if (mode == INTRO) 
    intro();
  else if (mode == MAIN)
    main();
  else if (mode == WORK)
    work();
  else if (mode == GAMEOVER)
    gameover();    
  else if (mode == BOOK)
    book();    
  else if (mode == SHOP)
    shop();    
  else if (mode == ANIMATION)
    animation();
  else
    println("Error: Mode = " + mode);
    
  // day count
  noStroke();
  buttons2(710, 25, 140, 20, 15, buttonColour);
  fill(255);
  textSize(18);
  text("Day: " + day, 710, 23);
  
  // coin count
  noStroke();
  buttons2(90, 25, 140, 20, 15, buttonColour);
  fill(255);
  textSize(18);
  text("Chipis: " + chipiCount, 90, 23);
  image(chipiCoin, 35, 25, 15, 15);
}
        
// normal buttons ----------------------------------------------------------------------
void buttons(float x, float y, float w, float h, int corners, color colour) {
  fill(colour);
  tactileRect(x, y, w, h);
  rect(x, y, w, h, corners);
}

void buttons2(float x, float y, float w, float h, int corners, color colour) {
  fill(colour);
  rect(x, y, w, h, corners);
}

void buttons3(float x, float y, float w, float h, int corners, color colour) {
  fill(colour);
  tactileRect2(x, y, w, h);
  rect(x, y, w, h, corners);
}

void buttons4(float x, float y, float w, float h, int corners) {
  noFill();
  rect(x, y, w, h, corners);
}

// tactile buttons ---------------------------------------------------------------------
void tactileRect(float x, float y, float w, float h) {
  if (mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y - h/2 && mouseY <= y + h/2) 
    stroke(255);
}

void tactileRect2(float x, float y, float w, float h) {
  if (mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y - h/2 && mouseY <= y + h/2) 
    stroke(#715928);
}

// tactile text ------------------------------------------------------------------------
void tactileText(float x, float y, float w, float h) {
  if (mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y - h/2 && mouseY <= y + h/2) 
    fill(buttonColour);
}

// buttons click -----------------------------------------------------------------------
void clickRect(float x, float y, float w, float h, int nextMode) {
  if (mouseX >= x - w/2 && mouseX <= x + w/2 && mouseY >= y - h/2 && mouseY <= y + h/2) 
    mode = nextMode;
}
