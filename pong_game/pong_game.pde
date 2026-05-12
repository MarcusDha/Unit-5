//Marcus Dha
//May 12, 2026
// 2-1
//COLORS
color white = #FFFFFF;
color grey = #B7B7B7;
color dGrey = #868585;
color brown = #A78D2C;
color green = #3B8B26;


//MODES
int GAME = 0;
int GAMEOVER = 1;
int START = 2;
int PAUSE = 3;
int mode;


//PADDLES + BALL
float padLX, padLY, padD, padRX, padRY, ballX, ballY, ballD, ballVX, ballVY; 

//KEYBOARD VARIABLES
boolean wkey,skey,upkey,downkey;


void setup () {
  size(800,800);
  mode = START;
  background(brown);
  
  //initialize paddles = ball
  padLX = 0;
  padLY = height/2;
  padD= 100;
  padRX = width;
  padRY = height/2;
  
  ballX = width/2;
  ballY = height/2;
  ballD = 50;
  ballVX = random(-5,5);
  ballVY = random(-5,5);
  
  //keyboard vars
  wkey = skey = upkey = downkey = false;
}

void draw () {
 if (mode == START) {
   starts();
 } else if (mode == GAME) {
   game();
 } else if (mode == GAMEOVER) {
   gameover();
 } else if (mode == PAUSE) {
   paused();
 } else {
  println("Mode Error: " + mode); 
 }
 
 if ( ballY < ballD/2 || ballY > height - ballD/2) {
    ballVY = ballVY * -1;    
  }
  
  if (dist(padLX, padLY, ballX, ballY) <= padD/2 + ballD/2) {
     ballVX = ballVX * -1;
     //ballVY = ballVY * -1;
  }
  
  if (dist(padRX, padRY, ballX, ballY) <= padD/2 + ballD/2) {
     ballVX = ballVX * -1;
     //ballVY = ballVY * -1;
  }
}
