void main() {
  textFont(mainFont);
  background(homeColour);
  image(homeBackground, 400, 280, 900, 900);

  // tax facts button
  noStroke();
  buttons4(680, 560, 100, 60, 2);
  fill(255);

  // tax facts text
  textSize(20);
  fill(0);
  tactileText(680, 560, 90, 50);
  text("tax facts!", 715, 515);
  image(taxBook, 680, 560, 120, 70);

  // new day button
  noStroke();
  buttons3(710, 65, 140, 40, 2, buttonColour);
  fill(255);
  textSize(20);
  text("New Day", 710, 63);

  // work button
  noStroke();
  buttons3(710, 115, 140, 40, 2, buttonColour);
  fill(255);
  textSize(20);
  text("Go To Work", 710, 113);

  // deposit button
  noStroke();
  buttons3(90, 65, 140, 40, 2, buttonColour);
  fill(255);
  textSize(20);
  text("Deposit", 90, 65);

  // shop button
  noStroke();
  buttons3(90, 560, 140, 40, 2, buttonColour);
  fill(255);
  textSize(20);
  text("Shop", 90, 557);

  image(catImage, 550, 450, 200, 200);
  
  if (watermelonClicker == false)
    image(CatBed, 350, 530, 200, 200);
  if (boxClicker == false)
    image(CatBox, 700, 450, 100, 100);
  if (gumballClicker == false)
    image(GumballMachine, 100, 400, 200, 200);
  if (barbieClicker == false)
    image(BarbieCat, 550, 450, 200, 200);
  if (catcusClicker == false)
    image(Catcus, 350, 375, 100, 100);
  if (frogClicker == false)
    image(Ferg, 350, 520, 50, 50);
}

void next_day() {
  day++;
  if (deposit_amount > 0)
    term_day++;
  if (term_day == 7) {
    chipiCount += deposit_amount * rate;
    deposit_amount = 0;
    term_day = 0;
  }
  if (day % 14 == 0)
    tax();
  workPerDay = false;
}

void tax() {
  if (chipiCount >= 200)
    chipiCount -= 200;
  else {
    mode = GAMEOVER;
  }
}

void deposit() {
  deposit_amount += chipiCount * 0.5;
  chipiCount *= 0.5;
}

void mainClicks() {
  if (mouseX >= 640 && mouseX <= 780 && mouseY >= 95 && mouseY <= 135) {
    if (workPerDay == false) {
      workPerDay = true;
      mode = ANIMATION;
    }
  }
    
  if (mouseX >= 20 && mouseX <= 160 && mouseY >= 45 && mouseY <= 85) {
    term_day++;
    deposit();
  }
  
  if (mouseX >= 640 && mouseX <= 780 && mouseY >= 45 && mouseY <= 85)
    next_day();
  clickRect(680, 560, 90, 50, BOOK);
  
  clickRect(90, 560, 140, 40, SHOP);
}
