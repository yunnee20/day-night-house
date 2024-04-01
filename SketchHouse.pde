//Color Palette Used
//Morning colors
color lb = color(209, 229, 239);
color blue = color(65, 129, 164);
color white = color(244, 233, 205);
color orange = color(252, 170, 103);
color green = color(73, 173, 99);
color darkgreen = color(30, 122, 66);
color darkorange = color(219, 142, 87);
color mwindow = color(111, 157, 166);
color sun = color(255, 91, 48);
color mstar = white;
color mshadow = color(150, 115, 95, 50);

//Night Colors
color darkblue = color(3, 25, 76);
color nsky = color(17, 46, 123);
color nwindow = color(255, 247, 149);
color nightgreen = color(0, 53, 22);
color nighttree = color(77, 46, 15);
color nstar = nwindow;
color nshadow = color(3, 17, 38, 100);

float x1, x2;
PShape suns;

void setup() {
  size(900, 600); // x, y
  //suns = createShape(ELLIPSE, 100, 80, 80, 80); //sun
  //suns.setStrokeWeight(0);
  //suns.setFill(sun);
}

void draw() {
  noStroke();

  /*--------simple house structure------------*/
  fill(white);
  rect(0, 0, 900, 600); //sky

  //Invisible Stars
  fill(mstar);
  pushMatrix();
  translate(width*0.3, height*0.1);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 7, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.14);
  rotate(frameCount / -100.0);
  star(0, 0, 13, 5, 5);
  popMatrix();
  
  pushMatrix();
  translate(width*0.15, height*0.3);
  rotate(frameCount / -100.0);
  star(0, 0, 10, 4, 5); 
  popMatrix();
  //end of invisible stars
   

  fill(sun);
  //ellipse(100, 80, 80, 80); //sun
  ellipse(mouseX, 80, 80, 80); //sun
  //suns = createShape(ELLIPSE, 100, 80, 80, 80); //sun
  //suns.setFill(sun);
  //shape(suns); //sun
  

  fill(orange);
  rect(0, 300, 900, 350); //land

  fill(white);
  quad(425, 400, 505, 400, 700, 600, 200, 600); //road
  
  /*------for shadow----------*/
  fill(mshadow);
  quad(280, 400, 680, 400, (mouseX-900) /-0.5, 450, (mouseX-400) /-0.5, 450);
  //if(mouseX <= 450){
    //x1 = mouseX /-1; 
  //}
  //quad(280, 400, 680, 400, 780, 450, 400, 420);
  //1st(LeftUp), 2nd(RightUp), 3rd(RightDown), 4th(LeftDown)
  /*------end of shadow----------*/

  //-----------tree behind of house---------
  fill(darkorange);
  rect(260, 240, 10, 140); //tree trunk

  fill(darkgreen);
  ellipse(265, 210, 100, 170); //tree leaves
  //-----------end of tree behind of house---------


  fill(lb); //white
  rect(280, 200, 400, 200); //house main

  fill(blue);
  quad(280, 170, 250, 260, 710, 260, 680, 170); //main rooftop
  //1st is leftup, 2nd is leftdown, 3rd is rightdown, 4th is rightup


  //-----------tree infront of house (L)---------
  fill(darkorange);
  rect(230, 260, 10, 140); //tree trunk

  fill(green);
  ellipse(235, 250, 60, 130); //tree leaves
  //-----------end of tree infront of house---------



  //-----------tree infront of house (R)---------
  fill(darkorange);
  rect(710, 260, 10, 140); //tree trunk

  fill(green);
  ellipse(715, 220, 80, 170); //tree leaves
  //-----------end of tree infront of house---------



  //for windows
  fill(mwindow);
  rect(590, 280, 25, 25); //Window 1 (Upleft)
  rect(625, 280, 25, 25); //Window 2 (Upright)
  rect(590, 315, 25, 25); //Window 3 (DownLeft)
  rect(625, 315, 25, 25); //Window 4 (DownRight)
  //end of windows
  
  fill(blue);
  rect(425, 300, 80, 100); //door

  fill(lb);
  ellipse(490, 350, 15, 15); //door handle

  /*--------end of simple house structure------------*/




  /*-------------for second storey--------------*/
  fill(lb);
  rect(350, 140, 250, 90); //second body

  fill(blue);
  quad(350, 90, 330, 140, 620, 140, 600, 90); //second rooftop

  //For Second floor windows
  //for windows pair 1 (left)
  fill(mwindow);
  rect(370, 150, 25, 25); //Window 1 (Upleft)
  rect(405, 150, 25, 25); //Window 2 (Upright)
  rect(370, 185, 25, 25); //Window 3 (DownLeft)
  rect(405, 185, 25, 25); //Window 4 (DownRight)

  //for windows pair 2 (right)
  rect(520, 150, 25, 25); //Window 1 (Upleft)
  rect(555, 150, 25, 25); //Window 2 (Upright)
  rect(520, 185, 25, 25); //Window 3 (DownLeft)
  rect(555, 185, 25, 25); //Window 4 (DownRight)
  //End of Second floor windows

  /*-----------end of second storey-------------*/
  
  
}


/*Interactive Part*/
void mousePressed(){
  //switch to morning
  blue = darkblue;
  sun = nwindow;
  //suns.setFill(nwindow);
  white = nsky;
  mwindow = nwindow;
  lb = color(65, 129, 164);
  orange = darkblue;
  green = color(30, 122, 66);
  darkgreen = nightgreen;
  darkorange = nighttree;
  mstar = nstar;
  mshadow = nshadow;
}

void mouseReleased() {
  //revert back to morning
  lb = color(209, 229, 239);
  blue = color(65, 129, 164);
  white = color(244, 233, 205);
  orange = color(252, 170, 103);
  green = color(73, 173, 99);
  darkgreen = color(30, 122, 66);
  darkorange = color(219, 142, 87);
  mwindow = color(111, 157, 166);
  //suns.setFill(color(255, 91, 48));
  sun = color(255, 91, 48);
  mstar = white;
  mshadow = color(150, 115, 95, 50);
}

/*Star Function*/
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
