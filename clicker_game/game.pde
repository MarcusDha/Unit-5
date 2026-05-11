void game () {
  background (255);
  circle(x, y, d);
  
  fill(white);
  circle(900, 100, 100);
  fill(dGrey);
  strokeWeight(5);
  line(885,75,885,125);
  triangle(900,75,930,100,900,125);
  
  x = x + vx;
  y = y + vy;


  fill(0);
  textSize(30);
  text( "Your Score: " + score, 50, 50);
  text("Your Lives: " + lives, 50, 100);
  
}


void gameClick () {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    hScore = hScore + 1;
    score = score + 1;
    success.rewind();
    success.play();
    
    vx = vx * 1.2;
    vy = vy * 1.2;
    
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
