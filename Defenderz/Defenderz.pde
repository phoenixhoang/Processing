int gameMode = 1;

PImage background;
int bgX = 0; //global variable background location

alien allen, alena, allie;
defender defender;  

void setup() {
  size(800, 400);
  background = loadImage("spaceBackground.jpg");
  background.resize(width, height);
  allen = new alien(600, 100, 5);
  alena = new alien(600, 200, 5);
  allie = new alien(600, 300, 5);
  defender = new defender(20, 200, 3);
}

void gameMode()
{
  if (gameMode == 1)
  {
    scrollBackground();
    allen.update();
    alena.update();
    allie.update();
    defender.update();
  } 
  else
  {
    background(255);
    fill(0);
    text("Game Over!", 350, 200);
  }
}

void draw ()
{
  gameMode();
  if (defender.crash() == true)
  {
    gameMode = 0;
  }
}

void scrollBackground()
{
  image(background, bgX, 0); //draw background twice adjacent
  image(background, bgX + background.width, 0);
  bgX -= 4;
  if (bgX == -background.width)
  {  
    bgX = 0;
  } //wrap background
}
