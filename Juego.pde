class Juego {

  //-----------------------------------------------------
  ////PROPIEDADES

  String estado;
  PImage fondo;
  int tamText;
  Jugador jugador;
  Reina reina;
  Contador contador;


  // -----------------------------------------------------
  //CONSTRUCTOR
  Juego() {
    estado = "menu";
    jugador = new Jugador();
    reina = new Reina();
    contador = new Contador();
    fondo = loadImage("fondo.png");
    tamText = 20;
    contador.tiempoContador=30;
    
  }

  // -----------------------------------------------------
  //METODOS
  void actualizar() {
    reina.actualizar();
    //-----ESTADO DE JUEGO---------
    //Menu

    if (estado.equals("menu")) {
      contador.tiempoContador=30;
    //Juego
    } else if (estado.equals("jugar")) {   
      contador.tiempoContador-=0.0193; //Si aca se puede reemplazar para calcular segundos reales, mejor      //Tiempo limite
      if (contador.tiempoContador<0) {
        estado="perder";
      } else if (reina.reinaVida<=0) {
        estado="ganar";
      }
    }
  }

  void dibujar() {
    if (estado.equals("menu")) {
      image(fondo, width/2, height/2);
      textSize(tamText+20);

      textAlign(CENTER);      
      fill(0);
      text("Minijuego: derrota a la reina", width/2, height/8+10);

      textSize(tamText);

      textAlign(CENTER);  
      fill(0, 80);
      text("Esto te enseñará a no meterte conmigo", width/4, height/5);
      text("Muajajaja.", 700, height/5+370);

      textAlign(CENTER);
      fill(0, 250);
      text("Para ganarle a la reina deberás iluminarla lo suficiente\nantes de que ella te congele en 30 segundos, ten cuidado!", width/2, height-40);   

      fill(255, 250);
      textAlign(CENTER);
      text("Empezar", width/2, height/2);
    }

    if (estado.equals("jugar")) {
      image(fondo, width/2, height/2);
      reina.dibujar();
      //Dibujar el contador y vida de la reina
      contador.dibujar();
      //Dibuja  del jugador en mouseX y mouseY
      jugador.luz(mouseX, mouseY);
    }

    //Estado "ganaste"
    if (estado.equals("ganar")) {
      image(fondo, width/2, height/2);  
      rectMode(CENTER);
      fill(#4bd8ff);
      rect(width/2, height/2, width, height);
      textAlign(CENTER);
      fill(255);
      text("¡Felicidades!\nLograste acabar con la reina.", width/2, height/3);
      text("Presiona la tecla ´R´ para reiniciar", width/2, height-40);
    }

    //Estado "perdiste"
    if (estado.equals("perder")) {
      image(fondo, width/2, height/2);  
      rectMode(CENTER);
      fill(255, 0, 0);
      rect(width/2, height/2, width, height);
      textAlign(CENTER);
      fill(255);
      text("¡Oh no!\nNo lo lograste, fuiste congelada por la reina", width/2, height/3);
      text("Presiona la tecla ´R´ para reiniciar", width/2, height-40);
    }
  }

  //-Vida de la reina y el contador.
  void bmatar() {
    reina.matar();
    contador.barraVida-=10;
  }

  void mouse() {
    if (estado.equals("jugar")) {
      jugador.iluminar(mouseX, mouseY, reina.x, reina.y, reina.tx, reina.ty);
      //juego = new Juego();
    } else if (estado.equals("menu")) { //Boton jugar   
      if (mouseX>width/2-50 && mouseX<width/2+50 && mouseY >height/2-5-20 && mouseY<height/2-5+20) {
        estado="jugar";
       }
    }
  }

  void tecla() {
    if (estado.equals("ganar") || estado.equals("perder") && keyCode == 'R') {
      estado = "menu";
      juego = new Juego();

      
    }
  }
}
