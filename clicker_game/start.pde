void starts () {
  music.play();
  background (grey);

  fill(255);
  textSize(100);
  text("THE", 425, 350);
  textSize(120);
  text("CLICKER GAME", 150, 450);


  rectfunc(300, 550, 400, 100, white);
  textSize(50);
  fill(grey);
  text("BEGIN", 430, 615);

  rectfunc(300, 700, 400, 100, white);
  fill(grey);
  text("OPTIONS", 400, 765);
}


void startsClick () {
  if (mouseX > 300 && mouseX < 700 && mouseY > 550 && mouseY < 650) {
    mode = GAME;

    //resetting
    lives = 3;
    score = 0;

    x = width/2;
    y = height/2;
    d = 100;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }

  if (mouseX > 300 && mouseX < 700 && mouseY > 700 && mouseY < 800) {
    mode = OPTIONS;
  }
}
