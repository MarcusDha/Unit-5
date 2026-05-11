void gameover () {
  music.pause();
  failure.play();
  background ( 255,0,0);
  fill(white);
  rectfunc(300,200,400,150,white);
  fill(grey);
  textSize(75);
  text("TRY AGAIN?", 325,300);
  
  fill(white);
  textSize(150);
  text("GAME OVER", 150,600);
  
  textSize(75);
  text("HIGH SCORE :" + hScore, 275,800);
  
  if (hScore < score) {
    hScore = score;
  }
}

void gameoverClick () {
  if ( mouseX > 350 && mouseX < 650 && mouseY > 200 && mouseY < 400) { 
    mode = START;
  }
}
