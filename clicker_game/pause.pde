void pauses () {
  music.pause();
  
  fill(0);
  textSize(50);
  text("PAUSE", 450,400);
}

void pausesClick () {
  if (dist (mouseX, mouseY, 900, 100) < 50) {
    mode = GAME;
  }
}
