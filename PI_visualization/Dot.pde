class Dot {
  int x;
  int y;
  color Color;

  Dot (int X, int Y, color c) {
    this.x = X;
    this.y = Y;
    this.Color = c;
  }

  void Display(int d) {
    noStroke();
    fill(Color);
    ellipse (x, y, d, d);
  }
}
