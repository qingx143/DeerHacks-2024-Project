int aniTimer = 0;
boolean curr = true;
void animation() {
  aniTimer++;
  if (frameCount % 15 == 0) curr = !curr;
  if (curr)
    image(driving1, 400, 280, 900, 900);
  else
    image(driving2, 400, 280, 900, 900);
  if (aniTimer > 200)
    mode = WORK;
}
