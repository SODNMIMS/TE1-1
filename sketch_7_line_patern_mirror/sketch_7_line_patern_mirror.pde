//variables to add mirror effect
// exercise - add bottom mirror,

void setup(){
  frameRate(10);
}
void draw(){
  int r = int(random(0,100));
  line(0,0,50,r);
  line(100,0,50,r);
  //
  line(0,100,50,r);
  line(100,100,50,r);
}