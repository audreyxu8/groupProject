//**bugs: the bubbles get stuck in corners and sometimes to each other
//if you don't want the bubbles to move take out speed ---> but they get spaced out weirdly (together in groups)
//need to figure out how to make bubbles the size of the score, add images to each bubble, click on the bubble to give info about the anime, add some audio(??) 
//-------------------------------------------------------------------------------------------------------------------------------------------------------------

int numBounce = 10;
ArrayList<Ball> bounceyBall = new ArrayList<Ball>();
Table animeList;

void setup(){
 background(19,31,31);
 size(1000,1000);
 noStroke();
 
 for(int i =0; i <numBounce; i++){
  bounceyBall.add(new Ball());
   
 }
 animeList = new Table();
  
 animeList = loadTable("AnimeList.csv","header");

TableRow row = animeList.getRow(int(random(100)));

//String name = row.getString("name");
float score = row.getFloat("score");

println(score);
saveTable(animeList, "AnimeList.csv");

}

void draw(){
  background(0);
  
 //for each bouncey ball in the bounceyBall list....
 for(Ball b: bounceyBall){
   b.checkBoundaries();
   b.checkCollision(bounceyBall);
   b.move();
   b.display();
 }
  
}
