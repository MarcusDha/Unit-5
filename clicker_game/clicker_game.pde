import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;

int START = 0;
int GAME = 1;
int OPTIONS = 2;
int PAUSE = 3;
int GAMEOVER = 4;

int score;
int lives = 3;
int hScore;
float slideY = 300;

float x, y, d;
float vx, vy;


color grey = #B7B7B7;
color dGrey = #868585;
color white = #FFFFFF;

//minim variables

Minim minim;
AudioPlayer music, success,failure;

void setup () {
  size(1000, 1000);
  mode = START;
  
  //ball settings
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5,5);
  vy = random(-5,5);
 
  //minim
  minim = new Minim(this);
  music = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
}

void draw () {
  
  d = map (slideY, 140, 455, 25, 100);
  
  if ( x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if ( y < d/2 || y > height - d/2) {
    vy = vy * -1;
  }
  
  
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
