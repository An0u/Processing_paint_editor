int rectx = mouseX;
int recty = mouseY;
int value = 0;//colour rect
int grid = 40;//size grid


//canvas and center points
void setup() {
  size(500, 500); 
  background(255);
  rectMode(CENTER);
}
//draw infinite loop, print x,y for debugging
void draw() {

  mouseClicked();
  print(mouseX, mouseY);
}

//when mouse is clicked
void mouseClicked() {
  if (mousePressed) {
    value=0;
    roundRect();
  } else {
    value=255;
  }
}

//We're working with 10px grid so mod grid, mod of a value under grid gets subtracted.
void roundRect() {
  if (mouseX%grid < 10 || mouseY%grid < 10) {
    int rectx = mouseX-(mouseX%grid);
    int recty = mouseY-(mouseY%grid);
    stroke(0);
    fill(value);
    rect(rectx, recty, grid, grid);
  }
  else{
    int rectx = 10 + (mouseX-(mouseX%grid));//round up, same as the other but add 20
    int recty = 10 + (mouseY-(mouseY%grid));
    stroke(0);
    fill(value);
    rect(rectx, recty, grid, grid);
  }
}
//
