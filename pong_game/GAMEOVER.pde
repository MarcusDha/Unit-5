void gameover() {
  textSize(150);
  if (lscore > 2) {
    background(#53DADE);
    fill(0, 0, 255);
    text("BLUE WINS", 50, 300);
    text(rscore, 500, 400);
  } else if ( rscore > 2) {
    background(#F25A5A);
    fill(255, 0, 0);
    text("RED WINS", 90, 300);
  }
  //score
  textSize(50);
  fill(0, 0, 255);
  text(lscore, 300, 400);
  fill(255, 0, 0);
  text(rscore, 500, 400);

  rectfunc(300, 600, 200, 100, white);
  //home button
  textSize(60);
  fill(green);
  text("HOME", 320, 665);
}


void gameoverClick () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 700) {
    background(brown);
    mode = START;
    lscore = rscore = 0;
  }
}
