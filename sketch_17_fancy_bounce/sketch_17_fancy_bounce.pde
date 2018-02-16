// how do you make the ball bounce faster with every touch


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

  if (xPos > 400) {
    xMove = -xMove -1;
  }
  if (yPos >400) {
    yMove = -yMove;
  }
  if (xPos < 0) {
    xMove = -xMove ;
  }
  if (yPos < 0) {
    yMove = -yMove;
  }
  print("x="+xPos);
  println(" y="+yPos);
//  delay(1000);
}