//import processing.sound.*;
//SoundFile file;
int numBounce = 10;

Ball [] balls;

Table animeList;

PImage face1,face2,face3,face4,face5,face6,face7,face8,face9;

void setup() {
  face1 = loadImage("Face1.png");
  face2 = loadImage("Face2.png");
  face3 = loadImage("Face3.png");
  face4 = loadImage("Face4.png");
  face5 = loadImage("Face5.png");
  face6 = loadImage("Face6.png");
  face7 = loadImage("Face7.png");
  face8 = loadImage("Face8.png");
  face9 = loadImage("Face9.png");
  
  size(1920, 1000);
  noStroke();

  //for (int i = 0; i < width; i++) {
  //  for (int j = 0; j < height; j++) {
  //    float r = map(i, 0, width, 0, 255);
  //    float g = map(j, 0, height, 0, 255);
  //    stroke(r, g, 170);
  //    point(i, j);
  //  }
  //}


  loadData();

  //  file = new SoundFile(this, "cowboy.mp3");
  //  file.play();
}

void draw() {
  
  
  float r = map(mouseX, 0, width, 100, 255);
  float g = map(mouseX, 0, height, 100, 255);
  float b = map(mouseY, 0, width, 255, 0);

  background(r,g,b);
  for (int i = 0; i < 100; i++) {
    balls[i].display();
    balls[i].rollover(mouseX, mouseY);
    balls[i].move();
    balls[i].checkBoundaries();
  }

  textAlign(LEFT);
  fill(0);
}

void loadData() {
  animeList = loadTable("AnimeList.csv", "header");
  balls = new Ball[animeList.getRowCount()];

  for (int i=0; i < animeList.getRowCount(); i++) {
    TableRow row = animeList.getRow(i);
    float score = row.getFloat("scored_by");
    color rating = color(255-(row.getFloat("score")*15),row.getFloat("score")*30,row.getFloat("score")*10);
    String n = row.getString("title");
    balls[i] = new Ball((score)/2000 +50, n, rating);
  }
}
