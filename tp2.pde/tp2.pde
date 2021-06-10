PImage fondo, trineo, gerda, kai, abuela, reina, senoraFlores, pirata;
PFont texto;
int estado = 0, imagenEstado = 0;
int x1,y1,x2,y2,x3, mov1;
int transmisionTexto;

void setup(){
  size(500,400);
  
  texto = loadFont("Georgia-Italic-48.vlw");
  fondo = loadImage("1.jpg");
  trineo = loadImage("2.png");
  gerda = loadImage("gerda.JPG");
  kai = loadImage("kai.JPG");
  abuela = loadImage("abuela.JPG");
  reina = loadImage("reina de las nieves.JPG");
  senoraFlores = loadImage("senore de las flores.JPG");
  pirata = loadImage("pirata.JPG"); 
  
  x1 = 5;
  x2 = 250;
  y1 = 100;
  y2 = 250;
  x3 = 0;
  mov1= 0;
}

void draw(){
 background(0);  

  if(estado == 0){
    textFont(texto,20);
    text("    Haga click \n para empezar", 180,180);
   x1 = 5;
   x2 = 250;
   y1 = 100;
   y2 = 250;
   x3 = 0;
   mov1= 0;
   transmisionTexto = 1;  
  }

//----------------------------------------------------
  if (estado ==1){
    imagenEstado = 1;
    if(imagenEstado == 1){
      x2 ++;
      y2 ++;
      image(fondo,0,0);
   
//----------------------------------------------------
    fill(255,transmisionTexto++);
    image(trineo,130,20);
    text(" La reina de las nieves",155,200);
    if(transmisionTexto > 300){
      x1=x1-2;
      x3=x3-2;
    if (x1 < -100){
      background(0);
      mov1--;
// Autor

      text("                Autor: \n Hans Christian Andersen",130,(mov1 + 200));

//----------------------------------Personajes principales--------------------------------------
    text("Personajes principales:",145,(mov1 + 270),500,400);
    
    text("Gerda",230,(mov1 + 420),500,400);
    image(gerda,0,(mov1 + 450),500,400);
    
    text("Kai",230,(mov1 + 910),500,400);
    image(kai,0,(mov1 + 940),500,400);
    
    text("La reina de las nieves",150,(mov1 + 1400),500,400);
    image(reina,0,(mov1 + 1430),500,400);
      
//----------------------------------Personajes secundarios---------------------------------------
    text("Personajes secundarios:",145,(mov1 + 1950),500,400);

    text("Abuela",230,(mov1 + 2050),500,400);
    image(abuela,0,(mov1 + 2080),500,400);
    
    text("La señora de las flores",150,(mov1 + 2540),500,400);
    image(senoraFlores,0,(mov1 + 2570),500,400);
    
    text("Pirata",230,(mov1 + 3030),500,400);
    image(pirata,0,(mov1 + 3060),500,400);
          
//--------------------------------------------Fin-------------------------------------------------
       
     text("Fin", 230,(mov1 + 3700),1000,800);
          
    }
   }
  }
 }
    if(estado == 2){
      estado = 0;
      imagenEstado = 0;
 }
}

void mouseClicked (){
estado++;
}
