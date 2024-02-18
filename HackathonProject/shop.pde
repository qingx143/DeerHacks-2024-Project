// fifth number makes it curved
void shop() {
  noStroke();
  fill(255);
  rect(400, 300, 600, 500, 10);
  fill(#836E4E);
  rect(200, 180, 180, 200, 10);
  rect(400, 180, 180, 200, 10);
  rect(600, 180, 180, 200, 10);
  rect(200, 420, 180, 200, 10);
  rect(400, 420, 180, 200, 10);
  rect(600, 420, 180, 200, 10);
  image(CatBed, 200, 160, 150, 150);
  image(CatBox, 400, 160, 150, 150);
  image(GumballMachine, 600, 160, 140, 140);
  image(BarbieCat, 200, 400, 140, 140);
  image(Catcus, 400, 400, 140, 140);
  image(Ferg, 600, 400, 140, 140);
  
  //Watermelon Bed
  noStroke();
  buttons2(200, 250, 140, 20, 15, buttonColour);
  fill(255);
  textSize(18);
  text("400 Chipis", 210, 247);
  image(chipiCoin, 160, 250, 15, 15);
  
  //Box
  noStroke();
  buttons2(400, 250, 140, 20, 15, buttonColour);
  fill(255);
  textSize(18);
  text("200 Chipis", 410, 247);
  image(chipiCoin, 360, 250, 15, 15);
  
  //Gumball Machine
  noStroke();
  buttons2(600, 250, 140, 20, 15, buttonColour);
  fill(255);
  textSize(18);
  text("1000 Chipis", 610, 247);
  image(chipiCoin, 560, 250, 15, 15);
  
  //Barbie Cat
  noStroke();
  buttons2(200, 488, 140, 20, 15, buttonColour);
  fill(255);
  textSize(18);
  text("3000 Chipis", 210, 485);
  image(chipiCoin, 155, 488, 15, 15);
  
  //Catcus
  noStroke();
  buttons2(400, 488, 140, 20, 15, buttonColour);
  fill(255);
  textSize(18);
  text("2000 Chipis", 410, 485);
  image(chipiCoin, 355, 488, 15, 15);
  
  //Ferg
  noStroke();
  buttons2(600, 488, 140, 20, 15, buttonColour);
  fill(255);
  textSize(18);
  text("5000 Chipis", 610, 485);
  image(chipiCoin, 555, 488, 15, 15);
  
  stroke(100);
  line(670, 70, 690, 60);
  line(670, 60, 690, 70);
  rect(680, 65, 20, 10);
}

void shopClicks() {
  clickRect(680, 65, 20, 10, MAIN);
  if (mouseX >= 130 && mouseX <= 270 && mouseY >= 240 && mouseY <= 260) {
    if (watermelonClicker == true) {
      if (chipiCount >= 400) {
        watermelonClicker = false;
        chipiCount -= 400;
        mode = MAIN;
      }
      else
        mode = MAIN;
    }
      }
  if (mouseX >= 330 && mouseX <= 470 && mouseY >= 240 && mouseY <= 260) {
    if (boxClicker == true) {
      if (chipiCount >= 200) {
        boxClicker = false;
        chipiCount -= 200;
        mode = MAIN;
      }
      else
        mode = MAIN;
    }
  }
  if (mouseX >= 530 && mouseX <= 670 && mouseY >= 240 && mouseY <= 260) {
    if (gumballClicker == true) {
      if (chipiCount >= 1000) {
        gumballClicker = false;
        chipiCount -= 1000;
        mode = MAIN;
      }
      else
        mode = MAIN;
    }
  }
  if (mouseX >= 130 && mouseX <= 270 && mouseY >= 478 && mouseY <= 498) {
    if (barbieClicker == true) {
      if (chipiCount >= 3000) {
        chipiCount -= 3000;
        barbieClicker = false;
        mode = MAIN;
      }
      else
        mode = MAIN;
    }
  }
  if (mouseX >= 330 && mouseX <= 470 && mouseY >= 478 && mouseY <= 498) {
    if (catcusClicker == true) {
      if (chipiCount >= 2000) {
        catcusClicker = false;
        chipiCount -= 2000;
        mode = MAIN;
      }
      else
        mode = MAIN;
    }
  }
  if (mouseX >= 530 && mouseX <= 670 && mouseY >= 478 && mouseY <= 498) {
    if (frogClicker == true) {
      if (chipiCount >= 5000) {
        frogClicker = false;
        chipiCount -= 5000;
        mode = MAIN;
      }
      else
        mode = MAIN;
    }
  }
}
