final color ALIEN1 = color(0, 255, 0);
final color ALIEN2 = color(50, 100, 0);

//draw an alien
class alien 
{
  int x;
  int y;
  int speedX;
  
  alien (int x, int y, int speedX)
  {
    this.x = x;
    this.y = y;
    this.speedX = speedX;
  }

  void move()
  {
    int speedY = (int) random(-10, 10);
    int speedX = (int) random(-5, 10);
    y = y + speedY;
    x = x - speedX;
    if (x <= 0)
    {
      x = 820;
    }
    
    if (y <= 10)
    {
      y = y + 10;
    }
    else if (y >= height - 10)
    {
      y = y - 10;
    }
    
  }

  void render()
  {
    fill(ALIEN1);
    ellipse(x, y, 30, 30);
    fill(ALIEN2);
    ellipse(x, y, 50, 15);
  }

  void update()
  {
    move();
    render();
  }
}
