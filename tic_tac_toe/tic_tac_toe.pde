void setup() {
  size(500, 500);
  background(255, 255, 255);
  noFill();
  drawBoard(500);
  textSize(128);
  fill(0, 255, 0);



}

void draw() {
 startGame();
 checkForWinners();

}
