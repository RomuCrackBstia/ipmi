float desplazamientoPrincipal = 0;
float desplazamientoFondo = 0;
float fillR = 255;
float fillG = 255;  
float fillB = 255;
float fillR1 = 255;
float fillG1 = 255;
float fillB1 = 255;

//link al video de explicacion: https://youtu.be/L-aNSydx6m4

void setup() {
  size(800, 400);
  refe = loadImage("refe.jpeg"); 
}

void draw() {
  println(mouseX + " / " + mouseY);
background(fillR1, fillG1,fillB1);
  
  //circuloFondo
  
  fill(fillR, fillG,fillB);
  float tam = 105;
  float separacion = 5;
  float paso = tam + separacion;
  float origenX = 450;
  float origenY = 180;

  for (int j = -5; j <= 10; j++) {
    for (int i = -1; i <= 10; i++) {
      float x = origenX + i * paso; //450 + (-1) * 110 = -340 a la izquierda (mientras que sea menor a 0)
      float y = origenY + j * paso; //180 + (-5) * 110 = -370 hacia arriba del centro ( mientras que sea menor a 0)
          
          
                
    //si i (columna) es par / la columna va para arriba   si no  la columna va para abajo    
      float dy = (i % 2 == 0) ? desplazamientoFondo % paso : -desplazamientoFondo % paso;
      circuloFondo(x, y + dy);
    }
  }
    //circuloPrincipal 
  
  float diametro = 100;
  float margenX = 5;
  float margenY = 5;
  float inicioX = 400 + diametro / 2;
  float inicioY = 75;


  fill(fillR1, fillG1, fillB1);
  
  for (int j = -5; j < 10; j++) {
    float y = inicioY + j * (diametro + margenY);
    float dx = (j % 2 == 0) ? desplazamientoPrincipal % (diametro + margenX) : -desplazamientoPrincipal % (diametro + margenX);

    for (int i = -6; i < 4; i++) {
      float x = inicioX + i * (diametro + margenX) + dx;
      circuloPrincipal(x, y);
    }
  }
  image(refe, -267, 0);

}
