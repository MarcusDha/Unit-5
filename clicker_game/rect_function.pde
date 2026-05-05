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

  if (mode == START) {
    if (mouseX > 300 && mouseX < 700 && mouseY > 550 && mouseY < 650) {
      mode = GAME;
    } else {
      if (mouseX > 300 && mouseX < 700 && mouseY > 700 && mouseY < 800) {
        mode = OPTIONS;
      }
    }
  }
}
