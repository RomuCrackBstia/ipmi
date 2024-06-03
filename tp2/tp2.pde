// COMPARADORES
/*
> Mayor que
< Menor que 
>= Mayor o igual que 
<= Menor o igual que
== Igual que 
!= Distinto que

*/


PImage uno;
PFont cambria;
PImage back;

void setup () {
  size (640, 480);
 uno = loadImage ("uno.jpg");
 back = loadImage("back.png");
 cambria = loadFont("cambria 16.vlw");
 
}

void draw () {
  background (255,255,255);
  push ();
  image(back,0,1);
  image (uno,320 ,1);
    if ( keyPressed ) {
    if (key == 'e') {
   textFont (cambria);  
  textSize(14);
  textAlign(LEFT, BOTTOM);
  fill (0,0,0);
  textLeading(20);
  text ("Romulo Lucesole", 0, 30);
  text ("Comision 5, docente Tobias Alborosa", 78, 465 );
  text (" Noveccento es un libro de Alessandro Baricco\nun escritor italiano\nque nos cuenta la historia de un joven pianista \nque segun se decia \nvivio toda su vida en un barco.", 0, 260);
    }
}
  
  pop ();
 println ("X:");
 println (mouseX);
 println ("Y:");
 println (mouseY);
  

}
