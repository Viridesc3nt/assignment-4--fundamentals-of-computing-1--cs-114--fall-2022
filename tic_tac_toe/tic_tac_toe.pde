void setup() {
  size(500, 500);
  background(255, 255, 255);
  noFill();
  drawBoard(500);
}

void draw() {
 startGame();
 checkForWinners();
}
