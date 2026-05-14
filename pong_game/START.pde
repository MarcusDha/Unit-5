void starts () {

  textSize(100);
  text("PONG", 280, 300);

  rectfunc(150, 500, 250, 150, green);
  rectfunc(450, 500, 250, 150, green);
  textSize(60);
  fill(white);
  text("2 PLAYER", 460, 590);
  text("1 PLAYER", 150, 590);
}


void startClick () {
  if (mouseX > 450 && mouseX < 700 && mouseY > 500 && mouseY < 650) {
    mode = GAME;
  }

  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 650) {
    AI = true;
    mode = GAME;
  }
}
