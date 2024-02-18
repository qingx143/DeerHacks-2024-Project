void intro() {
  textFont(mainFont);
  background(backColour);
  fill(0);
  text("Tax Cats", 400, 200);
  
  noStroke();
  buttons(400, 350, 200, 100, 30, textColour);
  fill(255);
  textSize(50);
  text("play", 400, 340);
}

void introClicks() {
  clickRect(400, 350, 200, 100, MAIN);
}
