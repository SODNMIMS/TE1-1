void setup(){
 
  size(400,400);
}

int elipseY= 30;
int rectY = 15;
void draw(){
  background(40,40,100); 
  ellipse(30,elipseY,30,30);
  rectMode(CORNER);
  rect(90,rectY,30,30);
  elipseY = elipseY + 1;
  rectY = rectY + 3;
}