int mode;

int START = 0;
int GAME = 1;
int OPTIONS = 2;
int PAUSE = 3;
int GAMEOVER = 4;

color grey = #B7B7B7;
color dGrey = #868585;
color white = #FFFFFF;

void setup () {
  size(1000, 1000);
  mode = START;

}

void draw () {
  if (mode == START) {
    starts();
  } else if (mode == GAME) {
    game();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == PAUSE) {
    pauses();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("ERROR ; MODE = " + mode);
  }
}
