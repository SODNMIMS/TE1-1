int xMove, yMove ;
int xPos, yPos; 
void setup() {
  size(400, 400);
  xPos = int(random(0, 400));
  yPos = int(random(0, 400));
  xMove = 3;
  yMove = 3;
}

void draw() {
  background(10, 255, 0);
  ellipse(xPos, yPos, 20, 20);
  xPos = xPos +xMove;
  yPos = yPos +yMove;

  if (xPos > width) {
    xMove = -xMove;
  }
  if (yPos >height) {
    yMove = -yMove;
  }
  if (xPos < 0) {
    xMove = -xMove;
  }
  if (yPos < 0) {
    yMove = -yMove;
  }
  print("x="+xPos);
  println(" y="+yPos);
//  delay(1000);
}