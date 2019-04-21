int numBounce = 10;

Ball [] balls;

Table animeList;



void setup(){

 
//background
 size(1000,1000);
 for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, 0, width, 0, 255);
      float g = map(j, 0, height, 0, 255);
      stroke(r, g, 170);
      point(i, j);
    }
  }

 noStroke();

 loadData();
 



   

 }





void draw(){


  for (int i = 0; i < 100; i++){

    balls[i].display();

    balls[i].rollover(mouseX, mouseY);

    balls[i].move();

    balls[i].checkBoundaries();

  }

  

  textAlign(LEFT);

  fill(0);

  

 //for each bouncey ball in the bounceyBall list....

 //for(Ball b: bounceyBall){

 //  b.checkBoundaries();

 //  b.checkCollision(bounceyBall);

 //  b.move();

 //  b.display();

 //}

  

}



void loadData(){

  animeList = loadTable("AnimeList.csv", "header");

  balls = new Ball[animeList.getRowCount()];

  

  for (int i=0; i < animeList.getRowCount(); i++){

    TableRow row = animeList.getRow(i);

    float score = row.getFloat("score");

    String n = row.getString("title");

    balls[i] = new Ball(score-4*25,n);

  }

}
