/*
Tecnología Multimedial 1, UNLP
Comsión 4, TP4
Alumna:Elea Sofia Carrillo, legajo (11886/9)
Cuento: "La Reina de las Nieves", por Hans Christian Andersen

Video explicativo:

*/

PImage [] imagen = new PImage [21];
int x1, y1=500;
String pantalla;
String str="Realizado por:\nElea Sofia Carrillo\nComisión 4\n\nProtagonistas:\nGerda\nKai\nLa Reina de las nieves\nLa abuela\nLos piratas\nEl chaman";

void setup() {
  x1 = width/3;
  //y1 = height;
  //Carga de imágenes con for
  for (int i = 0; i < imagen.length; i++) {
    imagen[i] = loadImage("imagen"+i+".png");  
  }
  size(600, 500);
  pantalla = "pantalla0";
  textSize(24);

  frameRate(130);
}

void draw() {
  textSize(20);
  //background(0);
  //if (frameCount % 10 == 40);
  
  if(pantalla == "pantalla0"){
    image(imagen[0],0,0);
    boton(40,355);
    boton(345,355); 
  }else if(pantalla == "pantalla1"){
    image(imagen[1],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Gerda y Kai eran mejores amigos.Un día, ambos fueron a la\ncasa de la abuela de Gerda, les contó una historia de una\npoderosa bruja, la reina de las nieves.",5,380);
  }else if(pantalla == "pantalla2"){
    image(imagen[2],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Kai se burló de ella, menospreciándola y abucheándole.La\nreina de las nieves se enteró mirándolo por una\nventana y le lanzo una maldición a su corazón, volviéndolo\nfrío y malo.",5,380);
  }else if(pantalla == "pantalla3"){
    image(imagen[3],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Al día siguiente ella fue a buscarlo y se lo llevó al castillo.\nGerda intentó detenerlo, pero fue en vano, la reina era más\nveloz.",5,380);
  }else if(pantalla == "pantalla4"){
    image(imagen[4],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Dias después, Gerda fue en su búsqueda, su abuela hizo que\nlleve un preciado espejo que tenía y de ahí empezó su\naventura.",5,380);
  }else if(pantalla == "pantalla5"){
    image(imagen[5],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Le pedía ayuda a animales que encontraba en un camino\npero ninguno tenía la respuesta que buscaba. Hasta que un\npájaro llama su atención.",5,380);
  }else if(pantalla == "pantalla6"){
    image(imagen[6],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Le dice que la siga, se dirigen a un rio movido, el\nave cuenta que si ofreces algo al rio este te llevará a tu\ndestino ¿Qué hará Gerda?",5,380);
  }else if(pantalla == "pantalla7"){
    image(imagen[7],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Gerda no cree que un río pueda ayudarla en su busqueda,\nPor lo que decide irse a pié. No consiguió respuestas,\nvuelve a casa cansada esperando a Kai.",5,380);
  }else if(pantalla == "pantalla8"){
    image(imagen[8],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Pide ayuda al río, regalándole un precioso collar que tenia,\nde la nada, aparece un bote vacío, agradecida, se sube a el y\nmágicamente se mueve solo.",5,380);
  }else if(pantalla == "pantalla9"){
    image(imagen[9],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("La lleva a un barco pirata estancado en agua congelada, de\npronto, le hacen una emboscada. Por suerte, ellos notaron\nque Gerda era buena y no le hicieron nada.",5,380);
  }else if(pantalla == "pantalla10"){
    image(imagen[10],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Ella les contó su situación y como estaba desesperadamente\nbuscando a su amigo. Los amigables piratas le ofrecían su\nayuda para su viaje. ¿Gerda la aceptará?",5,380);
  }else if(pantalla == "pantalla11"){
    image(imagen[11],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("No se sentía cómoda con ellos por lo amenazantes que se\nven y como la trataron al principio.Les agradece pero retoma\nsu camino sola.",5,380);
  }else if(pantalla == "pantalla12"){
    image(imagen[12],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Seguiste por un largo tiempo y empezaste a tener frío,\nya era demasiado tarde para volver por la nieve que cubrió\ntu camino por completo, y eventualmente, tu cuerpo.",5,380);
  }else if(pantalla == "pantalla13"){
    image(imagen[13],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Los piratas le entregan un reno que tenían de mascota, le\ndijeron que la llevaría con un chamán que le ayudará con lo\nque necesita. Gerda a paso rápido va a buscarlo.",5,380);
  }else if(pantalla == "pantalla14"){
    image(imagen[14],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Al hacerlo, el chaman cuenta que para derrotar a la reina\ndebe utilizar el espejo que tiene guardado. Sin entenderlo\ncompletamente, se dirige al hogar de su enemiga.",5,380);
  }else if(pantalla == "pantalla15"){
    image(imagen[15],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Gerda encuentra el castillo de la reina, entra y ve Kai con\notra apariencia, por la emoción lo abrazó pero estaba frío y\nmuy quieto, poco a poco se estaba congelando.",5,380);
  }else if(pantalla == "pantalla16"){
    image(imagen[16],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("La reina al ver a una intrusa está punto de lanzarle un\nhechizo. ¿Qué hace Gerda?",5,380);;
  }else if(pantalla == "pantalla17"){
    image(imagen[17],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Por no pensar rápidamente que hacer, el hechizo cae sobre\nella, congelándola de pies a cabeza junto a Kai por estar a\nsu lado. La reina celebra por su victoria.",5,380);
  }else if(pantalla == "pantalla18"){
    image(imagen[18],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Rápidamente sacas el espejo, mostrando el reflejo de la\nreina, vé a una dulce niña en ella. Se convierte en lo que era\nsu pasado yo antes del odio, agradece por todo y se retira.",5,380);
  }else if(pantalla == "pantalla19"){
    image(imagen[19],0,0);
    fill(255);
    rect(0,353,600,500);
    fill(0);
    text("Kai vuelve a ser el mismo de antes. Ambos regresan a casa,\ncontentos de estar juntos otra vez.",5,380);
  }else if(pantalla == "pantalla20"){
    image(imagen[20],0,0);
    fill(0);
    textSize(25);
    if (y1 <= -420) {
      y1 = y1 + (int)textWidth(str) + 550;
    }
    text(str, 300, y1);
    y1--;
    if (y1 == -420) {
      pantalla = "pantalla0";
      y1= 520;
    } 
    boton(30,365);
  }
   
}

void keyPressed() {
  if (pantalla == "pantalla1" && keyCode == ' ') {
    pantalla = "pantalla2";
  } else if (pantalla == "pantalla2" && keyCode == ' ') {
    pantalla = "pantalla3";
  } else if (pantalla == "pantalla3" && keyCode == ' ') {
    pantalla = "pantalla4";
  } else if (pantalla == "pantalla4" && keyCode == ' ') {
    pantalla = "pantalla5";
  } else if (pantalla == "pantalla5" && keyCode == ' ') {
    pantalla = "pantalla6";
  } else if (pantalla == "pantalla6" && keyCode == LEFT) {
    pantalla = "pantalla7";
  } else if (pantalla == "pantalla7" && keyCode == 'R') { //Final 1
    pantalla = "pantalla0";
  } else if (pantalla == "pantalla6" && keyCode == RIGHT) {
    pantalla = "pantalla8";
  } else if (pantalla == "pantalla8" && keyCode == ' ') {
    pantalla = "pantalla9";
  } else if (pantalla == "pantalla9" && keyCode == ' ') {
    pantalla = "pantalla10";
  } else if (pantalla == "pantalla10" && keyCode == RIGHT) {
    pantalla = "pantalla11";
  } else if (pantalla == "pantalla11" && keyCode == ' ') {
    pantalla = "pantalla12";
  } else if (pantalla == "pantalla12" && keyCode == 'R') { //Final 2
    pantalla = "pantalla0";
  } else if (pantalla == "pantalla10" && keyCode == LEFT) {
    pantalla = "pantalla13";
  } else if (pantalla == "pantalla13" && keyCode == ' ') {
    pantalla = "pantalla14";
  } else if (pantalla == "pantalla14" && keyCode == ' ') {
    pantalla = "pantalla15";
  } else if (pantalla == "pantalla15" && keyCode == ' ') {
    pantalla = "pantalla16";
  } else if (pantalla == "pantalla16" && keyCode == LEFT) {
    pantalla = "pantalla17";
  } else if (pantalla == "pantalla17" && keyCode == 'R') { //Final 3
    pantalla = "pantalla0";
  } else if (pantalla == "pantalla16" && keyCode == RIGHT) {
    pantalla = "pantalla18";
  } else if (pantalla == "pantalla18" && keyCode == ' ') {
    pantalla = "pantalla19";
  } else if (pantalla == "pantalla19" && keyCode == 'R') { //Final 4
    pantalla = "pantalla0";
  }
  println(pantalla);
 
}

void mousePressed(){
  if(pantalla == "pantalla0"){
   if(mouseX>40 && mouseX<260 && mouseY>355 && mouseY<475){
    pantalla = "pantalla1";
  }else if(mouseX>345 && mouseX<565 && mouseY>355 && mouseY<475){
    pantalla = "pantalla20";
  } 
 }
 if(pantalla == "pantalla20"){
   if(mouseX>30 && mouseX<250 && mouseY>365 && mouseY<470){
    pantalla = "pantalla0";
    y1= 520;
  }
 }
}

void boton(int x, int y) {
  fill(155);
  rect(x, y, 220, 120);
}
