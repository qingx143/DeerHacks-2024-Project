void gameover() {
  background(backColour);
  fill(backColour);
  rect(400, 300, 300, 50);
  textSize(25);
  fill(0);
  text("You've ran out of money :(", 400, 300);
  
}

void gameoverClicks() {
  if (mouseX >= 300 && mouseX <= 500 && mouseY >= 250 && mouseY <= 350)
    exit();
}
