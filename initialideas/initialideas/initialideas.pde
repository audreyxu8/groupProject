// HHaiiiiiiii <3 

////aljhfdsalk;hga;skhdjgas;h


//int[] angles = { 30, 10, 45, 35, 60, 38, 75, 67 };

//Table animeList = loadTable("Anime.csv");



//TableRow row = animeList.getRow(0);


//String name = row.getString("name");

//String score = row.getString("score");

//String episodes = row.getString("episodes");

//String rank = row.getString("rank");

Table animeList;

void setup() {

size(640, 360);
noStroke();
noLoop();  // Run once and stop

animeList = new Table();
  
 animeList = loadTable("Anime.csv","header");

TableRow row = animeList.getRow(int(random(100)));

String name = row.getString("name");

println(name);
saveTable(animeList, "Anime.csv");

}



//void draw() {

//  background(100);
//  pieChart(300, angles);

//}



//void pieChart(float diameter, int[] data) {

//  float lastAngle = 0;
//  for (int i = 0; i < data.length; i++) {
//    float gray = map(i, 0, data.length, 0, 255);
//    fill(gray);
//    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(data[i]));
//    lastAngle += radians(data[i]);
//  }
//}
