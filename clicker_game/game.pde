void game () {
  background (255);
  circle(x, y, d);
  circle(900, 100, 100);


  fill(0);
  textSize(30);
  text( "Your Score: " + score, 50, 50);
  text("Your Lives: " + lives, 50, 100);
}


void gameClick () {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    success.rewind();
    success.play();
  } else if (dist (mouseX, mouseY, 900, 100) < 50) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    failure.rewind();
    failure.play();
    if (lives == 0) {
      mode = GAMEOVER;
    }
  }
}
