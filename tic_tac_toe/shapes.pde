void drawCircle(float x, float y, int circleSize) {
  circle(x, y, circleSize);
}

void drawX(int x, int y, int lengthX, int lengthY) {
  line(x, y, x+lengthX, y+lengthY);
  line(x+lengthX, y, x, y+lengthY);

}
