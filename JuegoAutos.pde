class JuegoAutos {

  // -----------------------------------------------------
  // PROPIEDADES (variables)
  // EstadoGeneralDelJuego = menu, jugar, ganar, perder
  int estado;
  PFont tipografia;
  PImage menu;
  Batimovil batimovil;
  Obstaculo[] obstaculo1;
  Punto logo;
  Escenario fondo;


  // -----------------------------------------------------
  // CONSTRUCTOR (setup del objeto)
  JuegoAutos() {
    // EstadoGeneralDelJuego = "menu";

    estado = 0;
    batimovil = new Batimovil(230, 450); 
    obstaculo1 = new Obstaculo[5];
    logo= new Punto();
    fondo= new Escenario();
    tipografia= loadFont("CarroisGothicSC-Regular.ttf.vlw");
    menu= loadImage("Menu.jpg");
    //inicializo los objetos de los arreglos
    for ( int i = 0; i<obstaculo1.length; i++ ) {
      obstaculo1[i] = new Obstaculo();
    }
  }

  // -----------------------------------------------------
  // METODOS (funciones) 
  //Update es actualizar
  void update() {
    fondo.draw();
    fondo.update();
    batimovil.draw();
    logo.draw();
    logo.update();
    perderGanar();

    for ( int i = 0; i<obstaculo1.length; i++ ) {
      obstaculo1[i].draw();
      obstaculo1[i].update();
    }
    batimovil.colision(obstaculo1, logo, fondo);
  }



  // dibujar()
  void draw() {
    // --logicaDeEstados
    /*En el draw de juegoAutos se utilizan condicionales para 
    determinar que pantalla se va a dibujar*/
    //Sacar el menu?
    if (devolverEstadoJuego()==0) {
      textAlign(LEFT, BOTTOM);
      fill(255);

      background(0);
      tipografia= loadFont("CarroisGothicSC-Regular.ttf.vlw");
      textFont(tipografia);
      menu= loadImage("Menu.jpg");
      image(menu, 0, -20);
      textSize(80);
      text("Batman: La Persecucion", 40, 110);
      textSize(60);
      text("JUGAR", 70, 190);
    }

    if (devolverEstadoJuego()==1) {
      update();
    }

    if (devolverEstadoJuego()==2) {
      background(0);
      fill(255);
      textSize(50);

      text("GANASTE", 280, 180);
      textSize(40);

      text("Batman esta cerca de atrapar al Joker", 140, 240);
      //rect(200,300,90,50);
      text("Menu", 230, 350);
      text("Reiniciar", 452, 350);
      strokeWeight(2);
      fill(0, 0, 0, 0);
      stroke(255);
      rect( 452, 300, 150, 60);
      strokeWeight(2);
      fill(0, 0, 0, 0);
      stroke(255);
      rect( 420, 300, 170, 60);
    }

    if (devolverEstadoJuego()==3) {
      background(0);
      fill(255);
      textSize(50);
      text("Perdiste", 320, 180);
      textSize(40);
      text("El Joker escapo con el dinero de la ciudad", 120, 240);
      text("Menu", 230, 350);
      text("Reiniciar", 452, 350);
      strokeWeight(2);
      fill(0, 0, 0, 0);
      stroke(255);
      rect( 185, 300, 150, 60);
      strokeWeight(2);
      fill(0, 0, 0, 0);
      stroke(255);
      rect( 420, 300, 170, 60);
    }
  }

  // resetear()
  void reciclar() {
    logo.reciclar();
    for ( int i = 0; i<obstaculo1.length; i++ ) {

      obstaculo1[i].reciclar();
    }
  }

  void teclado() {
    batimovil.moverDer();
    batimovil.moverIzq();
    batimovil.moverArrib();
    batimovil.moverAbajo();
  }

  void perderGanar() {
    if (fondo.puntos==100) {
      estado=2;
      reciclar();
      logo.cambiar();
    }
    if (fondo.opacidad==255) {
      estado=3;
      reciclar();
      logo.cambiar();
    }
  }

  void jugarBoton() {
    //boton "Jugar"
    if (mouseX > 70 && mouseX < 185 && mouseY > 85 && mouseY < 200 && estado==0) {
      estado=1;
    }

    //Pantalla GANAR
    //boton "Menu"
    if (mouseX > 144 && mouseX < 300 && mouseY > 294 && mouseY < 362 && estado==2) {
      estado=0;
      fondo.puntos=0;
      fondo.opacidad=0;
      fondo.puntos=0;
      fondo.salud=100;
      batimovil = new Batimovil(230, 450);
    }
    //boton "Reiniciar"
    if (mouseX > 380 && mouseX < 550 && mouseY > 300 && mouseY < 362 && estado==2) {
      estado=1;
      fondo.puntos=0;
      fondo.opacidad=0;
      fondo.puntos=0;
      fondo.salud=100;
      batimovil = new Batimovil(230, 450);
    }

    //Pantalla PERDER
    //boton "Menu"
    if (mouseX > 144 && mouseX < 300 && mouseY > 294 && mouseY < 362 && estado==3) {
      estado=0;
      fondo.puntos=0;
      fondo.opacidad=0;
      fondo.puntos=0;
      fondo.salud=100;
      batimovil = new Batimovil(230, 450);
    }
    //boton "Reiniciar"
    if (mouseX > 380 && mouseX < 550 && mouseY > 300 && mouseY < 362 && estado==3) {
      estado=1;
      fondo.puntos=0;
      fondo.opacidad=0;
      fondo.puntos=0;
      fondo.salud=100;
      batimovil = new Batimovil(230, 450);
    }
  }
  //Retorna el valor de estado
  int devolverEstadoJuego() {
    return estado;
  }
}
