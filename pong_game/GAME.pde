void game () {
  background(brown);
  fill(white);
  line(width/2, 0, width/2, height);
  
  text(lscore, width/4, 200);
  text(rscore, 3*width/4, 200);
  
  //draw paddles + ball
  fill(0,0,255);
  circle(padLX, padLY, padD); // left
  fill(255,0,0);
  circle(padRX, padRY, padD); //right
  circle(ballX, ballY, ballD); // ball
  
  //move paddles
  if (wkey == true) padLY -= 5;
  if (skey == true) padLY += 5;
  
  if (upkey == true) padRY -= 5;
  if (downkey == true) padRY += 5;
  
  
  ballX = ballX + ballVX;
  ballY = ballY + ballVY;
  
}


void gameClick () {
  
}
