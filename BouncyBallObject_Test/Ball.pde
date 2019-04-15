class Ball
{
  float xPos, yPos, xSpeed, ySpeed;
  float size;
  color fill;
  String title; 
  boolean over = false;
  
  Ball(float xPos_, float yPos_, float size_, String s)
  {
   xPos = xPos_;
   yPos = yPos_; 
   size = size_;
   title = s;
    
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

void rollover(float xPos_, float yPos_, float size_){
    float disX = xPos_ - mouseX;
    float disY = yPos_ - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < size_/2 ) {
      textAlign(CENTER);
      fill (255); 
    } 
}
