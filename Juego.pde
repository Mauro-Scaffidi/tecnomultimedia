class Juego {

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
  Juego() {
    // EstadoGeneralDelJuego = "menu";

    estado = 0;
    batimovil = new Batimovil(230, 450); 
    obstaculo1 = new Obstaculo[5];
    logo= new Punto();
    fondo= new Escenario();
    tipografia= loadFont("CarroisGothicSC-Regular.ttf.vlw");
    menu= loadImage("Menu.jpg");
    //inicializo los objetos de los arreglos
    for ( int i = 0; i<5; i++ ) {
      obstaculo1[i] = new Obstaculo();
      
    }
  }

  // -----------------------------------------------------
  // METODOS (funciones) 
  void update() {
    
    for ( int i = 0; i<5; i++ ) {
      // --obstaculo1.actualizar();
      obstaculo1[i].update();
     
    }
    
    logo.update();
    batimovil.colision(obstaculo1, logo);
  }

  // dibujar()
  void draw() {
    // --logicaDeEstados
    if(estado==0){
      background(0);
      tipografia= loadFont("CarroisGothicSC-Regular.ttf.vlw");
      textFont(tipografia);
      menu= loadImage("Menu.jpg");
      image(menu, 0, -20);
      textSize(80);
      text("Batman: La Persecucion", 40, 110);
      textSize(60);
      text("Jugar", 70, 190);
      
     }
    // esto queda pendiente cuando tengamos las opciones de ganar y perder...
    // --llamar a los metodos dibujar de mis objetos
   if(estado==1){
   fondo.draw();
   fondo.update();
   batimovil.draw();
   logo.draw();
   logo.update();
    

    for ( int i = 0; i<5; i++ ) {
     
      obstaculo1[i].draw();
      obstaculo1[i].update();
      
     }
     batimovil.colision(obstaculo1, logo);
    }
    
    if(estado==2){
      background(0);
      text("GAME OVER", 270, 300);
      
      
    }
  }

  // resetear()
  void reciclar() {
    logo.reciclar();
    for ( int i = 0; i<5; i++ ) {
      // obstaculo1.reciclar();
      obstaculo1[i].reciclar();
    }
  }

  //importante: un método que ejecute los métodos del teclado de las clases
  void teclado() {
  batimovil.moverDer();
  batimovil.moverIzq();
  batimovil.moverArrib();
  batimovil.moverAbajo();
  }

  //nuevito flashado in real time
  int devolverEstadoJuego() {
    return estado;
  }
  
  void jugarBoton(){
    println(mouseX, mouseY);
    if (mouseX > 70 && mouseX < 185 && mouseY > 85 && mouseY < 200){
        estado=1;
    
    
  }
 }
}
