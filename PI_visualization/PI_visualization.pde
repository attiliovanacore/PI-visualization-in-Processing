String PIdigit ="314159 26535 89793 23846 26433 83279 50288 41971 69399 37510 58209 74944 59230 78164 06286 20899 86280 34825 34211 7067982148 08651 32823 06647 09384 46095 50582 23172 53594 08128 48111 74502 84102 70193 85211 05559 64462 29489 54930 38196   44288 10975 66593 34461 28475 64823 37867 83165 27120 19091 45648 56692 34603 48610 45432 66482 13393 60726 02491 41273   72458 70066 06315 58817 48815 20920 96282 92540 91715 36436 78925 90360 01133 05305 48820 46652 13841 46951 94151 16094   33057 27036 57595 91953 09218 61173 81932 61179 31051 18548 07446 23799 62749 56735 18857 52724 89122 79381 83011 94912   98336 73362 44065 66430 86021 39494 63952 24737 19070 21798 60943 70277 05392 17176 29317 67523 84674 81846 76694 05132   00056 81271 45263 56082 77857 71342 75778 96091 73637 17872 14684 40901 22495 34301 46549 58537 10507 92279 68925 89235   42019 95611 21290 21960 86403 44181 59813 62977 47713 09960 51870 72113 49999 99837 29780 49951 05973 17328 16096 31859   50244 59455 34690 83026 42522 30825 33446 85035 26193 11881 71010 00313 78387 52886 58753 32083 81420 61717 76691 47303   59825 34904 28755 46873 11595 62863 88235 37875 93751 95778 18577 80532 17122 68066 13001 92787 66111 95909 21642 01989"; //<>//
color[] colors = {#ff00ff, #ff0000, #f66221, #ffb73b, #ffffff, #8ac139, #35b446, #00ffff, #0000ff, #902089};
Dot[] dots = new Dot[PIdigit.length()];
int x0 = 15;
int x = x0;
int y = 15;
int d = 10;
int k = 30;
float tmp;

void setup() {
  PIdigit = PIdigit.replace(" ", "");
  size(1140, 780);
  background(0);
  for (int i=0; i < PIdigit.length(); i++) {
    if (PIdigit.charAt(i) == '1') {
      dots[i] = new Dot(x, y, colors[1]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '2') {
      dots[i] = new Dot(x, y, colors[2]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '3') {
      dots[i] = new Dot(x, y, colors[3]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '4') {
      dots[i] = new Dot(x, y, colors[4]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '5') {
      dots[i] = new Dot(x, y, colors[5]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '6') {
      dots[i] = new Dot(x, y, colors[6]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '7') {
      dots[i] = new Dot(x, y, colors[7]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '8') {
      dots[i] = new Dot(x, y, colors[8]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '9') {
      dots[i] = new Dot(x, y, colors[9]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
    if (PIdigit.charAt(i) == '0') {
      dots[i] = new Dot(x, y, colors[0]);
      x += k;
      if (x > width-x0) {
        x = x0;
        y += k;
      }
    }
  }
}

void draw() {
  background(0);
  for (int i=0; i < PIdigit.length(); i++) {
    dots[i].Display(d);
  }
  drawLines();
  //noLoop();
}

void drawLines() {
  for (int i=0; i < PIdigit.length(); i++) {
    for (int j=0; j < PIdigit.length(); j++) {
      if (dots[i].Color == dots[j].Color) {
        if (dist(dots[i].x, dots[i].y, dots[j].x, dots[j].y) <= 43) {
          stroke(dots[i].Color);
          line(dots[i].x, dots[i].y, dots[j].x, dots[j].y);
        }
      }
    }
  }
}

void keyPressed() {
  if (key == '+') d += 2;
  if (key == '-') d -= 2;
}
