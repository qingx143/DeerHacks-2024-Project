void book() {
  background(backColour);
  if (pageCount == 1)
    image(taxFacts1, 400, 325, 800, 800);
  if (pageCount == 2)
    image(taxFacts2, 400, 325, 800, 800);
  
  noStroke();
  buttons(700, 300, 150, 50, 30, textColour);
  fill(255);
  textSize(30);
  text("next", 700, 297);
  
  noStroke();
  buttons(100, 300, 150, 50, 30, textColour);
  fill(255);
  textSize(30);
  text("prev", 100, 297);
  
  noStroke();
  buttons(100, 550, 150, 50, 30, textColour);
  fill(255);
  textSize(30);
  text("back", 100, 550);
}

void bookClicks() {
  if (mouseX >= 625 && mouseX <= 775 && mouseY >= 275 && mouseY <= 325) 
    pageCount = 2;
  if (mouseX >= 25 && mouseX <= 175 && mouseY >= 275 && mouseY <= 325) 
    pageCount = 1;
  clickRect(100, 550, 150, 50, MAIN);
}
