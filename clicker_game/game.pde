void game () {
  background (255);
  circle(x,y,d);
  
  
  fill(0);
  textSize(30);
  text( "Your Score: " + score, 50,50);
  text("Your Lives: " + lives, 50, 100);
}


void gameClick () {
  if (dist(mouseX,mouseY,x,y) < d/2) {
    score = score + 1;
  } else {
     lives = lives -1; 
  }
  
}
