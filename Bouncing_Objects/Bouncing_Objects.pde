arrow arrow1, arrow2, arrow3;

void setup()
{
  size(500, 400);
  arrow1 = new arrow(20, 20, 2, 3);
  arrow2 = new arrow(160, 90, 3, 3);
  arrow3 = new arrow(240, 280, 4, 2);
}

void draw()
{
  background(255);
  arrow1.update();
  arrow2.update();
  arrow3.update();
  
  if (arrow1.crash(arrow2))
  {
    arrow1.bounce();
    arrow2.bounce();
  }
  else if (arrow1.crash(arrow3))
  {
    arrow1.bounce();
    arrow3.bounce();
  }
  else if (arrow3.crash(arrow2))
  {
    arrow2.bounce();
    arrow3.bounce();
  }
}
