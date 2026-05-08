void gameover () {
  music.pause();
  failure.play();
  background ( 255,0,0);
  fill(0);
  rect(350,200,300,200);
  
  score = 0;
  lives = 3;
}

void gameoverClick () {
  if ( mouseX > 350 && mouseX < 650 && mouseY > 200 && mouseY < 400) { 
    mode = START;
  }
}
