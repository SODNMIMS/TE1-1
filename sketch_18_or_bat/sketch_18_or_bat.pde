// and method

int xMove = 2;
int yMove =2;
int xPos;
int yPos; 
void setup() {
  size(400, 400);
  rectMode(CENTER);
   xPos = int(random(0, 400));
   yPos = int(random(0, 400));
}

void draw() {
  background(155);
 // rect(200, 200, 200, 200);
  if (mouseX <100 || mouseX>300) {
    rect(mouseX, mouseY, 10, 50);
  }
  moveBall();
}

void moveBall(){
//background(10, 255, 0);
  ellipse(xPos, yPos, 20, 20);
  xPos = xPos +xMove;
  yPos = yPos +yMove;

  if (xPos > 400) {
    xMove = -xMove ;
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
  println("y="+yPos);
//  delay(1000);
}