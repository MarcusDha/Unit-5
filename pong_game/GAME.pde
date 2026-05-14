void game () {
  background(brown);
  stroke(white);
  line(width/2, 0, width/2, height);

  //scores
  textSize(100);
  fill(0, 0, 255);
  text(lscore, width/4, 200);
  fill(255, 0, 0);
  text(rscore, 3*width/4, 200);
  timer = timer -1;

  //draw paddles + ball
  fill(0, 0, 255);
  circle(padLX, padLY, padD); // left
  fill(255, 0, 0);
  circle(padRX, padRY, padD); //right
  circle(ballX, ballY, ballD); // ball

  //move paddles
  if (wkey == true) padLY -= 5;
  if (skey == true) padLY += 5;

  if (AI == false ) {
    if (upkey == true) padRY -= 5;
    if (downkey == true) padRY += 5;
  } else {
   if (ballX > 400) {
     if (ballY < padRY) padRY -= 4;
     if (ballY > padRY) padRY += 4;
   }
    
  }
  
  
  //paddle limits
  if (padLY < 100) {
    padLY = 100;
  } else if ( padLY > 700) {
    padLY = 700;
  }

  if (padRY < 100) {
    padRY = 100;
  } else if ( padRY > 700) {
    padRY = 700;
  }

  //moving ball
  if (timer < 0) {
    ballX = ballX + ballVX;
    ballY = ballY + ballVY;
  }

  //scoring
  if (ballX <= ballD/2) {
    rscore++;
    ballX = width/2;
    ballY = height/2;
    timer = 100;
  } else if (ballX >= width) {
    lscore++;
    ballX = width/2;
    ballY = height/2;
    timer = 100;
  }

  if (lscore > 2) {
    mode = GAMEOVER;
  }

  if (rscore > 2) {
    mode = GAMEOVER;
  }
}


void gameClick () {
  mode = PAUSE;
}
