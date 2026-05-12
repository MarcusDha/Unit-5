void game () {
  background(brown);
  
  //draw paddles + ball
  circle(padLX, padLY, padD); // left
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
