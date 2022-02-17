class PantallaMenu implements Pantalla {
  PImage menu;
  PFont tipografia;
  Boton botonJugar;
  Boton botonCreditos;

  PantallaMenu(Juego juego) {
    //Se declara la tipografia  y la imagen de fondo del menu
    menu=loadImage("0.jpg");
    tipografia=loadFont("CarroisGothicSC-Regular.ttf.vlw");

    //Se declaran las instancias de las clases BotonJugar y BotonCreditos
    botonJugar = new Boton(juego, "JUGAR", juego.pantallas[1], 168, 283, 200, 65, false);
    botonCreditos = new Boton(juego, "CREDITOS", juego.pantallas[15], 155, 325, 200, 65, false );
  }

  void draw() {

    textFont(tipografia);
    fill(255);
    tint(150, 150);
    image(menu, -100, -210);

    textSize(65);
    text("BATMAN", 135, 285);

    /*Se dibuja el botonJugar y el botonCreditos en el 
     menu de inicio*/
    botonJugar.draw();
    botonCreditos.draw();
  }

  void mouseClicked() {
    botonJugar.mouseClicked();
    botonCreditos.mouseClicked();
  }

  void agregar1Opcion(Juego juego, String texto, Pantalla pantalla) {
  }
  void agregar2Opciones(Juego juego, String texto1, Pantalla pantalla1, String texto2, Pantalla pantalla2) {
  }
  void agregarTexto(Texto texto) {
  }
}
