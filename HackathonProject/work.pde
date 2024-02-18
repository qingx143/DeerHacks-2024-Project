boolean clicked = true;
int x = 400;
int y = 300;
int direction = 10;
int coffeeCount = 0;

void work() {
  background(backColour);
  image(coffeeMachine, 400, 300, 450, 450);
  
  if (clicked == false) {
    fill(#CBB088);
    coffeeCount++;
    strokeWeight(1);
    if (coffeeCount <= 260)
      rect(400, 336, 5, 200);
    if (coffeeCount >= 240) 
      rect(400, 385, 70, 40);
    noStroke();
    if (coffeeCount >= 180) 
      rect(400, 400, 70, 40);
    if (coffeeCount >= 120) 
      rect(400, 420, 70, 40);
    if (coffeeCount >= 60) 
      rect(400, 440, 70, 30);
    rect(400, 450, 70, 20);
  }
  
  image(coffeeCup, 400, 360, 300, 300);
  fill(textColour);
  textSize(17);
  text("Press the button when \n the line nears the green", 135, 275);
  if (dist(135, 375, mouseX, mouseY) <= 50)
    stroke(255);
  circle(125, 375, 100);
  
  fill(#81D867);
  noStroke();
  rect(400, 160, 30, 20);
  fill(#F5E33B);
  rect(370, 160, 30, 20);
  rect(430, 160, 30, 20);
  fill(#F0B038);
  rect(340, 160, 30, 20);
  rect(460, 160, 30, 20);
  fill(#E35042);
  rect(310, 160, 30, 20);
  rect(490, 160, 30, 20);
  stroke(0);
  strokeWeight(2);
  fill(255);
  rect(x, 160, 10, 30);
  if (clicked == true) {
    x += direction;
    if (x == 500)
      direction = -5;
    if (x == 300)
        direction = 5;
  }
  
  if (coffeeCount > 350) {
    fill(255);
    strokeWeight(3);
    rect(400, 300, 400, 300, 30);
    fill(0);
    textSize(20);
    text("You made it through the work day, congrats!\nYou have recieved 100 chipis,\n(click to return home.)", 400, 300);
  }
}

void workClicks() {
  if (dist(135, 375, mouseX, mouseY) <= 50)
    clicked = false;
  if (coffeeCount > 400) {
    chipiCount += 100;
    reset();
    mode = MAIN;
  }
}

void reset() {
  clicked = true;
  x = 400;
  y = 300;
  direction = 10;
  coffeeCount = 0;
  aniTimer = 0;
}
