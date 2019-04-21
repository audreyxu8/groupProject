int numBounce = 10;
Ball [] balls;
Table animeList;

void setup(){
 background(19,31,31);
 size(1000,1000);
 noStroke();
 loadData();
   
 }


void draw(){
  background(0);
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
    balls[i] = new Ball(score*10,n);
  }
}
