PImage palta;


void setup(){
  
 
  size(800,400);
  background(255);
  palta = loadImage("paltasi.png");
 
}

void mouseClicked() {
  // Imprime las coordenadas del clic
  println(mouseX,",", mouseY);
}



void draw(){
  background(255);
  image (palta, 0, 0, 400, 400);
  fill (193, 234, 28);
  stroke (134,198,16 );
  strokeWeight(10);
  bezier(470.0,220.0,470.0,450.0,740.0,450,740.0,219.0);
  bezier(470.0,220.0,470.0,-40.0,740.0,-40.0,740.0,220.0);
  stroke (72, 62,5);
  strokeWeight(5);
  fill (185, 130, 9);
  circle (605, 240, 170);
  noStroke();
  fill (54, 37, 1);
  circle (555, 240, 25);
  circle (655, 240, 25);
  strokeWeight (3);
  bezier(610.0,251.0,610.0,265.0,580.0,265.0,580.0,251.0);




}
