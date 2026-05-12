void starts () {
  
  textSize(100);
  text("PONG", 280,300);
  
  rectfunc(300,500,200,100, green);
}


void startClick () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
     mode = GAME; 
  }
}
