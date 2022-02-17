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

  /*En el draw de esta clase se dibuja la pantalla de creditos de
   la aventura grafica, dibujando todos los elementos de la misma
   y añadiendo la funcion draw de la clase botonVolver(para dibujar 
   el boton que se encuentra en la pantalla)*/
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

  /*En el mouseClicked de PantallaCreditos se llama a la funcion 
   mouseClicked de la clase Boton volver*/
  void mouseClicked() {
    botonVolver.mouseClicked();
  }
  
  void agregar1Opcion(Juego juego, String texto, Pantalla pantalla){
    botonVolver = new Boton(juego,"<<VOLVER", juego.pantallas[0], 30, 460, 200, 65, false);
  }
  
  /*Esta funciones se escriben dentro de esta clase y de esta forma, debido a que se necesita que este presente 
  para que la clase se relacione con la interface correctamente. Esto, por que se necesita que la clase tenga todas las mismas funciones
  que las que tiene la interface en ella para que funcione correctamente implements pantalla.*/
  void agregar2Opciones(Juego juego, String texto1, Pantalla pantalla1, String texto2, Pantalla pantalla2){}
  
  //
  void agregarTexto(Texto texto){}
}
