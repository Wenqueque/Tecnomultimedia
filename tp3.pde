 /*

 Tecnología Multmedial I, Comisión4, TP3
 Estudiante: Carrillo, Elea Sofia. Legajo 88116/9
 
 Link del video: https://youtu.be/2GxlPzLUmfw
 
 */

int cantidad, tam;
float grados, vel;
color color1, color2;


void setup() {
  size(400, 400 );
  rectMode( CENTER );
  colorMode( RGB, 360, 100, 100 ); 

  cantidad = 8;
  tam = width / cantidad;
  grados = 0;
  vel = 1000;
  color1 = color2 = color( 255 );
  color2 = color (0 );
  
}


void draw() {
  background(color1);
  stroke(15);

  for(int i = cantidad; i > 0; i-- ) {
    
     float monto = map( i, cantidad, 0, 0, 1 );
     color lerpc = lerpColor( color1, color2, monto );
     fill( lerpc );
      
    pushMatrix();
    translate( width/2, height/2 );
    float aux = map( i, cantidad, 0, 0, grados );
    rotate(radians(aux));
    tam = width / cantidad;  
    rect( 0, 0, i*tam, i*tam, 7 );
    popMatrix();
 
  }
}

void keyPressed() {
  if ( key == 'S' || key == 's' && cantidad < 20 )
    cantidad++;
  if ( key == 'W' || key == 'w' && cantidad > 0 )
    cantidad--;

  if ( key == 'R' || key == 'r' ) {
  
    cantidad = 8;
    tam = width / cantidad;
    grados = 0;
    vel = 1000;
    color1 = color2 = color( 255 );
    color2 = color (0 );
   
  }
}

void mouseMoved() {
  grados = map( mouseX, 0, width, -150, 150 );
  vel = mouseY;
}

void mousePressed() {

  color1 = color( random(360), random(70.100), random(70, 100) );
  color2 = color( random(360), random(70.100), random(10, 50) );
}
