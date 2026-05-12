void mouseReleased () {
 
  if (mode == START) {
   startClick();
 } else if (mode == GAME) {
   gameClick();
 } else if (mode == GAMEOVER) {
   gameoverClick();
 } else if (mode == PAUSE) {
   pauseClick();
 }
  
}





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
