void mouseReleased() {
  if (mode == INTRO) 
    introClicks();
  if (mode == MAIN)
    mainClicks();
  if (mode == WORK)
    workClicks();
  if (mode == GAMEOVER)
    gameoverClicks();
  if (mode == BOOK)
    bookClicks();
  if (mode == SHOP)
    shopClicks();
    
  //if (dropdown) {
  //  changeRect2(40, 100, 35, 35, INSTRUCTIONS);
  //  changeRect(40, 190, 35, 35, SETTING);
  //  if (mouseX >= 25 && mouseX <= 55 && mouseY >= 130 && mouseY <= 160) {
  //    if (main.isMuted())
  //      main.unmute();
  //    else
  //      main.mute();
  //  }
  //}
}
