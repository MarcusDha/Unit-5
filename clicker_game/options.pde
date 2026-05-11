void options () {
  background (grey);

  //slider
  rectfunc(750, 100, 100, 400, white);
  stroke(grey);
  line(800, 125, 800, 475);
  fill(grey);
  circle(800, slideY, 50);

  //continue button
  rectfunc(600, 800, 300, 100, white);
  fill(grey);
  textSize(50);
  text("CONTINUE", 635, 870);
}

void optionsClick () {

  if (mouseX > 600 && mouseX < 900 && mouseY > 800 && mouseY < 900) {
    mode = START;
  }
}
