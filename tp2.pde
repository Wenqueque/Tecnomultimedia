/*

 Estidiante:Elea Sofia Carrillo, legajo 88116/9.
 Comisión 4
 Cuento utilizado para realizar este trabajo: "La reina de las nieves" por Andersen.
 Imágenes sacadas del video en youtube: "La Reina de las Nieves - Cuentos infantiles para dormir" por OkiDokiDo Español.
 URL del video: https://youtu.be/c0xoGhlmBi0
 
 */

PImage fondo, trineo, gerda, kai, abuela, reina, senoraFlores, pirata;
PFont text;
float px= 0, py = 10;
int mv = 400, mv1 = 0, mv2 = 500, mv3= -500, mv4 = -1250;
int mx = 500, my = 400;
int estado = 0, imagenEstado = 0;
int vel = round(random(2, 3));
int seg;

void setup() {
  size(500, 400);
  background(0);

  //-------------------------Carga de imágenes y fuentes--------------------------

  fondo = loadImage("1.jpg");
  trineo = loadImage("2.png");
  gerda = loadImage("gerda.JPG");
  kai = loadImage("kai.JPG");
  abuela = loadImage("abuela.JPG");
  reina = loadImage("reina de las nieves.JPG");
  senoraFlores = loadImage("senore de las flores.JPG");
  pirata = loadImage("pirata.JPG"); 

  text = loadFont("LucidaBright-Demi-48.vlw");

  frameRate(100);
}

void draw() {

  background(0);

  mv --; //Esta sirve para y
  mv1 ++; //esta es 0
  mv2 --; //Esta sirve para x
  mv3 ++;
  mv4 ++;
  mv1 = mv1 + vel;
  mv3 = mv3 + vel;
  mv4 = mv4 + vel;

  mx --;
  my --;

  println(frameCount);

  //-----------------------Pantalla de inicio----------------------------  

  if (frameCount % 60 == 1) {
    seg ++;
  }
  if (seg >0 && seg <=11) {
    image(fondo, 0, 0);
    image(trineo, mv1, 20);
    fill(255);
    textFont(text, 48);
    text("      La reina \n  de las nieves", mv3, 100);
    text("                Autor: \n Hans Christian Andersen", mv4, 100);
    
  //-----------------------Personajes principales------------------------  
  
  } else if (seg >11 && seg <= 15) {
    background(0);
    text(" Personajes \n principales:", 100, 150);
  } else if (seg >15 && seg <= 19) {
    image(gerda, 0, 0);
    text("Gerda", mx + 750, 90);
  } else if (seg >19 && seg <= 23) {
    image(kai, 0, 0);
    text("Kai", mx + 1050, 90);
  } else if (seg >23 && seg <= 27) {
    fill(#4A95B7);
    image(reina, 0, 0);
    text("     La reina \n de las nieves", mx + 1150, 50);
    
  //-----------------------Personjes secundarios------------------------
    
  } else if (seg >27 && seg <= 32) {
    fill(255);
    background(0);
    text("  Personajes \n secundarios:", 85, 150);
  } else if (seg >32 && seg <= 37) {
    image(abuela, 0, 0);
    text("Abuela", mx + 1600, 350);
  } else if (seg >37 && seg <= 42) {
    image(senoraFlores, 0, 0);
    text("   La señora \n de las flores ", mx + 1850, 320);
  } else if (seg >42 && seg <= 47) {
    image(pirata, 0, 0);
    text(" Amiga \n pirata", mx + 2200, 320);
  } else if (seg >47 && seg <= 55) {
    background(0); 
    text("fin", 215, 205);
  }
}
