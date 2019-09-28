
int rectx;
int recty;
int grid = 40;//size grid
int i = 0;
int halfgrid = grid/2;
int r;
int g;
int b;
int num = 0;


//no variables in the size command?
//canvas and center points
void setup() {
  size(400, 400); 
  background(255);
  rectMode(CENTER);


}

//draw infinite loop, print x,y for debugging
void draw() {
  gridRend();
  mouseClicked();
  print(r,g,b); //print(mouseX, mouseY);

}
void gridRend(){
      //make a grid based on var grid
  //width/grid is to calculate how mny lines
  while (i < width/grid) {
    i = i+1;
    //x
    stroke(224,224,224);
    line(grid-grid/2, 0, grid-grid/2, height);
    line(grid*i+grid/2, 0, grid*i+grid/2, height);
    //y
    line(0, grid*i+grid/2, width, grid*i+grid/2);
    line(0, grid-grid/2, width, grid-grid/2);
  }
}

switch(keyPressed){
 case a:
 println("a");
 break;
 
 default:
 println("default");
 break;
}

void keyPressed() {
  if (key == 'w' && r != 255 && g != 255 && b != 255) {  //250,250,250
       r = 255;
       g = 255;
       b = 255; 
      return;
    }
  if (key == 'b' && r != 0 && g != 0 && b != 0) { 
      r = 0;
      g = 0;
      b = 0;
      return;
    } 
  if (key == 'q' && r != 255 && g != 0 && b != 0) { 
      r = 255;
      g = 0;
      b = 0;
      return;
    } 
   if (key == 't' && r != 51 && g != 255 && b != 51) { 
      r = 51;
      g = 255;
      b = 51;
      return;
    } 
    
    if (key == 'e' && r != 102 && g != 0 && b != 102) { 
      r = 102;
      g = 0;
      b = 102;
      return;
    } 
    if (key == 'p' && r != 65 && g != 59 && b != 255) { 
      r = 65;
      g = 59;
      b = 255;
      return;
    } 
    if (key == 'g' && r != 255 && g != 221 && b != 3) { 
      r = 255;
      g = 221;
      b = 3;
      return;
    } 
    if (key == 'u' && r != 240 && g != 255 && b != 110) { 
      r = 240;
      g = 255;
      b = 110;
      return;
    } 
    if (key == 'l' && r != 247 && g != 255 && b != 176) { 
      r = 247;
      g = 255;
      b = 176;
      return;
    } 
    if (key == 'r' && r != 255 && g != 102 && b != 112) { 
      r = 255;
      g = 102;
      b = 112;
      return;
    } 
    if (key == 'c' && r != 255 && g != 13 && b != 13) { 
      r = 255;
      g = 13;
      b = 13;
      return;
    } 
     if (keyCode == BACKSPACE) {
     background(255); 
  }
  
  } 
//rgb colour  
//when mouse is clicked
void mouseClicked() {
  if (mousePressed) {
    roundRect();
  }
}
//Y is inaccurate
//I want everything to start at 0,0
//We're working with 10px grid so mod grid, mod of a value under grid gets subtracted.
void roundRect() {
  if (mouseX%grid < grid|| mouseY%grid < grid) {
    int rectx = mouseX-(mouseX%grid);
    int recty = mouseY-(mouseY%grid);
    stroke(0,0,0);
    fill(r,g,b);  //this is where colour originates
    rect(rectx, recty, grid, grid);
  }
}

