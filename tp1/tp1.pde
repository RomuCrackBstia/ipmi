
PImage camarasi;

void setup(){
  size (800, 400);
  background (200);
  
  camarasi= loadImage("kamm.jpg");
}

void draw (){
  
  println( mouseX + " / " + mouseY );
  
  background (15,26,90);
 image(camarasi, 0, 0);
//age(camarasi,0+400,0);

//FONDO
noStroke();  //Blanco
fill(255,255,255);
rect(400,67,43,69);
strokeWeight(8); //Amarillo
stroke(224,130,29);
fill(224,173,29);
rect(450,82,35,62);
noStroke();  //Rojo
fill(225,73,29);
rect(400,0,43,48);
noStroke(); //Mapa
fill(170,247,247);
rect(600,0,110,100);
noStroke(); //Cuadro Verde
fill(4,118,10);
rect(739,10,45,60);

//CHASIS
fill(100,99,99);
strokeWeight(3);
stroke(0,0,0);
beginShape();
vertex(436,146);
vertex(737,146);
vertex(737,294);
vertex(436,294);
endShape(CLOSE);
/////////////////
strokeWeight(2);
fill(196,196,196);
beginShape();
vertex(436,146);
vertex(436,134);
vertex(528,134);
vertex(540,112);
vertex(737,114);
vertex(737,146);
endShape(CLOSE);
////////////////
fill(100,99,99);
stroke(0);
strokeWeight(2);
rect(424,173,75,110,10,15,20,10);
////////////////
fill(0,0,0);
beginShape();
vertex(480,134);
vertex(480,124);
vertex(533,124);
vertex(526,134);
endShape(CLOSE);
////////////////
fill(0,0,0);
beginShape();
vertex(445,134);
vertex(445,128);
vertex(470,128);
vertex(470,134);
endShape(CLOSE);

//ESCRITORIO
fill(44,42,42);
noStroke();
rect(400,316,400,84);
quad(436,294,400,316,800,316,800,294);
strokeWeight(5);
stroke(152,23,23);
line(436,294,400,316);

//LENTE
strokeWeight(9);//1
stroke(0,0,0);
fill(100,104,124);
circle(606,208,205);

strokeWeight(5);//2
stroke(0,0,0);
fill(52,53,67);
circle(606,208,145);

strokeWeight(3);
stroke(0,0,0);
fill(139,141,147);//3
circle(606,208,110);

strokeWeight(2);//4
fill(0,0,0);
circle(606,208,90);
fill(8,12,46);

stroke(118,118,118);
circle(606,208,40);//5
fill(2,4,28);

stroke(0,0,0);
fill(0,0,0);
circle(606,208,20);//6
}
