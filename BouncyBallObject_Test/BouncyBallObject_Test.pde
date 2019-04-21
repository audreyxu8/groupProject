<<<<<<< HEAD
=======
import processing.sound.*;
SoundFile file;
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4
int numBounce = 10;

Ball [] balls;

Table animeList;
<<<<<<< HEAD


=======
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4

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
<<<<<<< HEAD

 loadData();
 



   

 }





void draw(){
=======
 loadData();
 
 file = new SoundFile(this, "cowboy.mp3");
 file.play();
 }
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4


  for (int i = 0; i < 100; i++){

    balls[i].display();
<<<<<<< HEAD

    balls[i].rollover(mouseX, mouseY);

=======
    balls[i].rollover(mouseX, mouseY);
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4
    balls[i].move();

    balls[i].checkBoundaries();
<<<<<<< HEAD

=======
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4
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
<<<<<<< HEAD

=======
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4
  

  for (int i=0; i < animeList.getRowCount(); i++){

    TableRow row = animeList.getRow(i);

    float score = row.getFloat("score");

    String n = row.getString("title");
<<<<<<< HEAD

    balls[i] = new Ball(score-4*25,n);

=======
    balls[i] = new Ball((score-5)*25,n);
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4
  }

}
