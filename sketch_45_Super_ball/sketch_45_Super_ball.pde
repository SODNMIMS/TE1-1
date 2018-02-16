float xMove[] = {};
float yMove[] = {};
float xPos[] = {};
float yPos[] = {}; 

void setup() {
  size(400, 400); 
  stroke(20, 20, 244);
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  noFill();

  for (int i=0; i<xPos.length; i++) {
    ellipse(xPos[i], yPos[i], 20, 20);
    xPos[i] = xPos[i] +xMove[i];
    yPos[i] = yPos[i] +yMove[i];

    if (xPos[i] > width) {
      xMove[i] = -xMove[i];
    }
    if (yPos[i] >height) {
      yMove[i] = -yMove[i];
    }
    if (xPos[i] < 0) {
      xMove[i] = -xMove[i];
    }
    if (yPos[i] < 0) {
      yMove[i] = -yMove[i];
    }
    print("x="+xPos[i]);
    println(" y="+yPos[i]);
  }




  //  delay(1000);
}

void mouseClicked() {
  xPos = append(xPos, mouseX);
  yPos = append(yPos, mouseY);
  xMove = append(xMove, random(-3, 3));
  yMove = append(yMove, random(-3, 3));
}