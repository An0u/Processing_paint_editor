
int rectx;
int recty;
int grid = 20;//size grid
int i = 0;
int halfgrid = grid/2;
int r;
int g;
int b;
int num = 0;


//no variables in the size command?
//canvas and center points
void setup() {
  size(600, 600); 
  background(255);
  rectMode(CENTER);


}

//draw infinite loop, print x,y for debugging
void draw() {
  gridRend();
  mouseClicked();
  print(r,g,b); //print(mouseX, mouseY);t

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
    
        if (key == 'e' && r != 102 && g != 0 && b != 102) { 
      r = 180;
      g = 170;
      b = 233;
    } 
             if (key == 't' && r != 118 && g != 102 && b != 198) { 
      r = 118;
      g = 102;
      b = 198;
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
    stroke(224,224,224);
    fill(r,g,b);  //this is where colour originates
    rect(rectx, recty, grid, grid);
  }
}
