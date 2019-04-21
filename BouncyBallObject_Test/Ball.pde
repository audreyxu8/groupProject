class Ball
{
  
  float xPos, yPos, xSpeed, ySpeed;
  float size;
  color fill;
<<<<<<< HEAD
 // float score = row.getFloat("score");

  
  Ball()
=======
  String title; 
  boolean over = false;

  Ball(float size_, String s)
>>>>>>> 15eec1fc539c6e9b23ada7212efa1e1260dc7590
  {
    xPos = random(width);
    yPos = random(height); 
    size = size_;
    title = s;

    float xDir = random (-1, 1);
    float yDir = random (-1, 1);

    //speed in xdir and y dir
    if (xDir>0)
    {
      xSpeed =1;
    } else
    {
      xSpeed = -1;
    }

    if (yDir >0)
    {
      ySpeed = 1;
    } else
    {
      ySpeed =-1;
    }
  }


  void display()
  {
    stroke(0);
    strokeWeight(2);
    fill(255);
    ellipse(xPos, yPos, size, size);
    if (over) {
      fill(100,0,100);
      textAlign(CENTER);
      text(title, xPos, yPos+size/2+20);
    }
  }


  void move()
  {
    
    xPos += xSpeed/size*4;
    yPos += ySpeed/size*4;
    
   
  }

  void checkBoundaries()
  {
    if (xPos >= width - size/2 || xPos <= 0 + size/2)
    {
      xSpeed *= -1;
    }

    if (yPos >= height - size/2 || yPos <= 0 + size/2)
    {
      ySpeed *= -1;
    }
  }

  void checkCollision(Ball[] balls)
  {
    for (Ball b : balls)
    {
      float d = dist(xPos, yPos, b.xPos, b.yPos);
      float sumRad = size/2 + b.size/2;

      if (d <= sumRad)
      {
        xSpeed *= -1;
        ySpeed *=-1;
        b.xSpeed *= -1;
        b.ySpeed *=-1;
      }
    }
<<<<<<< HEAD
    
 void loadData(){
  animeList = loadTable("AnimeList.csv","header");
  Ball = new Ball[animeList.getRowCount()];
   for (int i = 0; i<animeList.getRowCount(); i++) {
    // Iterate over all the rows in a table.
    TableRow row = animeList.getRow(i);

  
    // Access the fields via their column name (or index).
   float x = row.getFloat("score");
    //String n = row.getString("name");
      
    // Make a Bubble object out of the data from each row.
    Ball[i] = new Ball(x,,xPos,yPos);
  }
}
=======
  }

  void rollover (float px, float py) {
    float d = dist(px, py, xPos, yPos);
    if (d<size/2) {
      over = true;
    } else {
      over = false;
    }
  }
>>>>>>> 15eec1fc539c6e9b23ada7212efa1e1260dc7590
}
