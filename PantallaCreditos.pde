 /*Se crea la clase PantallaCreditos y con "implements" se añade la interface Pantalla*/
class PantallaCreditos implements Pantalla{
  PImage creditos;
  PFont tipografia;
  Boton botonVolver;
  Juego juego;

  PantallaCreditos(Juego juego_) {
    //Se declara la tipografia  y la imagen de fondo del menu
    creditos=loadImage("13.jpg");
    tipografia=loadFont("CarroisGothicSC-Regular.ttf.vlw");

    juego = juego_;
  }

  void draw() {
    textFont(tipografia);
    tint(100, 100);
    background(0);
    image(creditos, -300, -100);
    fill(255);
    textSize(65);
    text("BATMAN", 300, 200);
    textSize(50);
    text("Dirigido por: Mauro Scaffidi", 160, 300);
    text("Escrito por: Mauro Scaffidi", 160, 400);
    botonVolver.draw();
  }

  void mouseClicked() {
    botonVolver.mouseClicked();
  }
  
  void agregar1Opcion(Juego juego, String texto, Pantalla pantalla){
    botonVolver = new Boton(juego,"<<VOLVER", juego.pantallas[0], 30, 460, 200, 65, false);
  }
  
  void agregar2Opciones(Juego juego, String texto1, Pantalla pantalla1, String texto2, Pantalla pantalla2){}
  
  //
  void agregarTexto(Texto texto){}
}
