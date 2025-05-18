void setup() {
  size (640, 480);
  e = 1;
  icono = loadImage("iconosi.png");
  imagenuno= loadImage("imagenuno.jpg");
  imagendos= loadImage("imagendos.jpg");
  imagentres= loadImage("imagentres.jpg");
  finalsi= loadImage("finalsi.jpeg");
  reiniciar= loadImage("reiniciar.png");
  funciona= loadFont("funciona.vlw");
}

void draw() {
  posXnombre = posXnombre +2;
  println( mouseX + " / " + mouseY );

 if ( e == 1 ) {
  background(156, 67, 0);
  image(icono, 50, 100);
  textFont(funciona);
  textAlign(CENTER);
  textSize(34);
  
  
  if (fade < 255) {
    fade += 2;
  }

  fill(81, 125, 25, fade);  
  text("PULSA CUALQUIER TECLA\n PARA COMENZAR", 330, 350);
}


  if ( frameCount == (60*12) ) {
    e = 2;
  } else if ( e == 2) {
    background (240, 173, 0);
    image(imagenuno, 0, 120);
    noStroke();
    fill(81, 125, 25, 150);
    rect (0, 0, 640, 120);
    textFont(funciona);
    fill(156, 67, 0);
    textAlign(CENTER);
    textSize(16);
     if (textoUnoY < 20) {
    textoUnoY += 1; 
  }
    text(uno, 320, textoUnoY);
    
     if ( frameCount == (60*24) ) {
      e=3;
    }
  } else if ( e == 3 ) {
    image(imagendos, -100, -40);
    
    fill(81, 125, 25, 190);
    rect(30, 10, 285, 435);

    
    if (textoX < 40) {
        textoX += 2; 
    }

    fill(255);
    textAlign(LEFT);
    textSize(16);
    text(dos, textoX, 25); 

   
    if (frameCount == (60 * 36)) {
        e = 4;
    }

    }
   else if ( e == 4 ) {
    image(imagentres, 0, 0);
    fill (81, 125, 25, 190);
    rect ( 15, 30, 260, 335);
    fill (81, 125, 25, 190);
    rect ( 390, 200, 240, 250);
    fill (255);
    textAlign(LEFT);
    textSize(16);
    text (tres, 20, 55);
    text (cuatro, 400, 220);
  }
  
  
  
   if ( frameCount == (60*48) ) {
      e=5;
   } else if ( e == 5 ) {
    image(finalsi, 0, 0);
    fill(126,21,52);
    rect(0,330,640, 150);
    image(reiniciar,246,358);
    fill(255,0,0,50);
    circle(width/2, 400, 125);
    fill(255);
    text("PULSA AQUI",145,400);
    text("PARA REINICIAR",400,400);
   }if ( frameCount == (60*60) ) {
      e=5;
   }
  }

void keyReleased () {
  if (key =='b') {
    e--;
  }
  if (key =='n') {
    e++;
  }
  println(e);
}


void mousePressed (){
  if ( mouseX > 257 && mouseX < 200+124 && mouseY > 337  && mouseY < 337+126 ) {
    e=1;
    }
  }
