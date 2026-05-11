void rectfunc (int x, int y, int w, int h, color variable) {
  strokeWeight(3);
  fill(variable);
  rectTact(x, y, w, h);
  rect(x, y, w, h);
}

void rectTact (int x, int y, int w, int h ) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(white);
  } else {
    stroke(dGrey);
  }
}


void mouseReleased () {

  if (mode == GAME) {
    gameClick();
  } else if (mode == OPTIONS) {
    optionsClick();
  } else if (mode == PAUSE) {
    pausesClick();
  } else if (mode == GAMEOVER) {
    gameoverClick();
  } else if (mode == START) {
    startsClick();
  }
}

void mouseDragged () {
  if (mouseX > 750 && mouseX < 850 && mouseY > 140 && mouseY < 455) {
    slideY = mouseY;
  }
}
