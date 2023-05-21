//draw an defender
class defender
{
  int x;
  int y;
  int deltaY;

  defender (int x, int y, int deltaY)
  {
    this.x = x;
    this.y = y;
    this.deltaY = deltaY;
  }

  boolean crash()
  {
    color test = get(defender.x + 65, defender.y);
    if (test == color(ALIEN1) || test == color(ALIEN2))
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  //void meMode()
  //{
  // bacround(255);
  //  tex"Game Over!", 300, 200);
  //}

  void render()
  {
    //draw a defender
    fill(255, 0, 0);
    rect(x, y, 50, 20);
    triangle(x+50, y, x+50, y+20, x+60, y+10);
    fill(0, 0, 100);
    rect(x, y-10, 20, 10);
  }

  void update()
  {
    render();
    keyPressed();
  }

  void keyPressed() {
    if (key == CODED) {
      if (keyCode == UP) {
        defender.y = y - deltaY;
        if (defender.y <= 0)
        {
          defender.y = 0;
        }
      } else if (keyCode == DOWN ) 
      {
        defender.y = defender.y + deltaY;
        if (defender.y >= 380)
        {
          y = 380;
        }
      }
    }
  }
}
