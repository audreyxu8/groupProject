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

<<<<<<< HEAD
void setup() {

  size(1000, 1000);
  noStroke();
  loadData();

  file = new SoundFile(this, "cowboy.mp3");
  file.play();
}


void draw() {
  
  for (int i = 0; i < 100; i++) {
=======
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

>>>>>>> ca3e95beecbb22c25ac61a52151d27a86257ab4b
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

<<<<<<< HEAD
=======
  

>>>>>>> ca3e95beecbb22c25ac61a52151d27a86257ab4b
  textAlign(LEFT);

  fill(0);
<<<<<<< HEAD
}

void loadData() {
=======

  

 //for each bouncey ball in the bounceyBall list....

 //for(Ball b: bounceyBall){

 //  b.checkBoundaries();

 //  b.checkCollision(bounceyBall);

 //  b.move();

 //  b.display();

 //}

  

}



void loadData(){

>>>>>>> ca3e95beecbb22c25ac61a52151d27a86257ab4b
  animeList = loadTable("AnimeList.csv", "header");

  balls = new Ball[animeList.getRowCount()];
<<<<<<< HEAD

  for (int i=0; i < animeList.getRowCount(); i++) {
=======
<<<<<<< HEAD

=======
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4
  

  for (int i=0; i < animeList.getRowCount(); i++){

>>>>>>> ca3e95beecbb22c25ac61a52151d27a86257ab4b
    TableRow row = animeList.getRow(i);

    float score = row.getFloat("score");

    String n = row.getString("title");
<<<<<<< HEAD
    balls[i] = new Ball((score-5)*25, n);
=======
<<<<<<< HEAD

    balls[i] = new Ball(score-4*25,n);

=======
    balls[i] = new Ball((score-5)*25,n);
>>>>>>> a1d149c146b1a26b22587bdefaaaad9ba5af0bd4
>>>>>>> ca3e95beecbb22c25ac61a52151d27a86257ab4b
  }

}
