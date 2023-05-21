class arrow
{
  int x;
  int y;
  int speedX;
  int speedY;
  PImage upLeftArrow, upRightArrow, downLeftArrow, downRightArrow;
  
  boolean crash(arrow other)
  {
    return (sqrt((this.x - other.x)*(this.x - other.x)) <= 50  &&  sqrt((this.y-other.y)*(this.y-other.y)) <= 50);
  }

  void bounce()
  {
    speedX = -speedX;
    speedY = -speedY;
  }

  arrow(int x, int y, int speedX, int speedY)
  {
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    upLeftArrow = loadImage("upLeftArrow.jpg"); //loads from .pde source code directory
    upRightArrow = loadImage("upRightArrow.jpg");
    downLeftArrow = loadImage("downLeftArrow.jpg");
    downRightArrow = loadImage("downRightArrow.jpg");
  }

  void update()
  {
    move();
    render();
}

  void move()
  {
    x = x + speedX;
    y = y + speedY;
    if (x >= width - 50)
    {
      speedX = -speedX;
    } else if (x <= 0)
    {
      speedX = -speedX;
    } else if (y >= height - 50)
    {
      speedY = -speedY;
    } else if (y <= 0)
    {
      speedY = -speedY;
    }
  }

  void render()
  {
    image(downRightArrow, x, y);
    if (speedX >= 0 && speedY >= 0)
    {
      image(downRightArrow, x, y);
    } else if (speedX <= 0 && speedY >= 0)
    {
      image(downLeftArrow, x, y);
    } else if (speedX <= 0 && speedY <= 0)
    {
      image(upLeftArrow, x, y);
    } else if (speedX >= 0 && speedY <= 0)
    {
      image(upRightArrow, x, y);
    }
  }
}
