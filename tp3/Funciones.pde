PImage refe;
void circuloFondo(float x, float y) {
  fill(fillR1, fillG1,fillB1);
  strokeWeight(3);
  rect(x, y, 105, 105);
  rect(x + 13, y + 13, 75, 75);
  rect(x + 6, y + 5, 90, 90); 
  rect(x + 21, y + 21, 60, 60);
  fill(255);
  strokeWeight(2);
    fill(fillR1, fillG1,fillB1);
  circle(x + 53, y + 53, 10);
  strokeWeight(3);
  noFill();
  circle(x + 53, y + 53, 30);
  circle(x + 53, y + 53, 45);
}
void circuloPrincipal(float x, float y) {
  strokeWeight(3);
fill(fillR, fillG, fillB);
  circle(x, y, 100);
fill(fillR, fillG, fillB);
  circle(x, y, 80);
fill(fillR, fillG, fillB);
  circle(x, y, 60);
  strokeWeight(2);
fill(fillR, fillG, fillB);
  circle(x, y, 40);
fill(fillR, fillG, fillB);
  circle(x, y, 20);
  strokeWeight(1);
  
  circle(x, y, 5);
}

void mouseMoved() {
  desplazamientoPrincipal += 2;
  desplazamientoFondo += 2;
}
void keyReleased() {
  if (key == 'r') {
    desplazamientoPrincipal = 0;
    desplazamientoFondo = 0;
  fillR = 255;
  fillG = 255;
  fillB = 255;
  fillR1 = 255;
  fillG1 = 255;
  fillB1 = 255;
}
   else if (key == 'R') {
   desplazamientoPrincipal = 0;
    desplazamientoFondo = 0;
     fillR = 255;
  fillG = 255;
  fillB = 255;
  fillR1 = 255;
  fillG1 = 255;
  fillB1 = 255;
  }
}

float colorAleatorio(float min, float max) {
  return random(min, max);
}

void mousePressed() {
  fillR1 = colorAleatorio(0, 256);
  fillG1 = colorAleatorio(0, 256);
  fillB1 = colorAleatorio(0, 256);
  
  fillR = colorAleatorio(0, 256);
  fillG = colorAleatorio(0, 256);
  fillB = colorAleatorio(0, 256);
}
