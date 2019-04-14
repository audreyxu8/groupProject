class Ball
{
  float xPos, yPos, xSpeed, ySpeed;
  float size;
  color fill;
  
  Ball()
  {
    size = random(50,80);
    fill = color(117,247,238);
    xPos = random(0, width);
    yPos = random(0, height);
    
    float xDir = random (-1, 1);
    float yDir = random (-1, 1);
    
    //speed in xdir and y dir
    if(xDir>0)
    {
      xSpeed =1;
     }else
     {
       xSpeed = -1;
     }
   
    if(yDir >0)
    {
        ySpeed = 1;
    }else
    {
       ySpeed =-1;
    }
  }
  
  
  void display()
  {
   fill(fill);
   ellipse(xPos,yPos,size,size);
    
  }
  
  void move()
  {
   xPos += xSpeed;
   yPos += ySpeed;
    
  }
  
  void checkBoundaries()
  {
     if(xPos >= width - size/2 || xPos <= 0 + size/2)
     {
        xSpeed *= -1;
     }
     
      if(yPos >= height - size/2 || yPos <= 0 + size/2)
      {
        ySpeed *= -1;
      }
  }
  
  void checkCollision(ArrayList<Ball> bounceyBall)
  {
     for (Ball b: bounceyBall)
     {
       float d = dist(xPos, yPos, b.xPos, b.yPos);
       float sumRad = size/2 + b.size/2;
       
       if(d <= sumRad)
       {
          xSpeed *= -1;
          ySpeed *=-1;
          b.xSpeed *= -1;
          b.ySpeed *=-1;
       }
      }
    }
}
