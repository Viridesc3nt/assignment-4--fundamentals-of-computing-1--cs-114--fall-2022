void setup() {
  size(500, 500);
  background(255, 255, 255);
  noFill();
  drawBoard(500);
}

void draw() {
 startGame();
 checkForWinners();
 checkForDraw();
 if(checkForDraw() && !gameOver) {
  fill(0, 0, 0);
  textSize(60);
  noLoop();
  println("Draw!");
  text("Draw!", 200, 250);
 }
}
