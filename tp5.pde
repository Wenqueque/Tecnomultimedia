/*
Tecnología Multimedial 1, UNLP
Comisión 4, TP5
Alumna:Elea Sofia Carrillo, legajo (11886/9)
Cuento: "La Reina de las Nieves", por Hans Christian Andersen
 
Video explicativo:
https://youtu.be/dT9azvxv5mc
 
 */

Juego juego;

void setup() {
  size( 800, 600 );
  juego = new Juego();
  imageMode(CENTER);
}

void draw() {
  background(0);  
  juego.actualizar();
  juego.dibujar();
}

void mousePressed() {
  juego.mouse();
}

void keyPressed() {
  juego.tecla();
}
