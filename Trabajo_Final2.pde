//Declaracion del objeto Juego(instancia de la clase con el mismo nombre)
Juego juego;
JuegoAutos juegoAutos;

int modoJuego = 0;

//Aca se define el tamaño que tendra la pantalla y se asigna el valor de juego
void setup() {
  size(800, 600);
  juego= new Juego();
  juegoAutos= new JuegoAutos();
}

void draw() {
  println(modoJuego);
  if (modoJuego == 0) {
    juego.draw();
    if ((juego.pantallaActual == juego.pantallas[9]) &&
      (juegoAutos.devolverEstadoJuego() != 2)) {
      modoJuego = 1;
    }
  } else if (modoJuego == 1) {
    juegoAutos.draw();
    //devolverEstadoJuego== pantalla ganar del juego
    if (juegoAutos.devolverEstadoJuego() == 2) {
      modoJuego = 0;
    }
  }
}

void mouseClicked() {
  if (modoJuego == 0) {
    juego.mouseClicked();
  }
}


void keyPressed() {
  if (modoJuego == 1) {
    juegoAutos.teclado();
  }
}


void mousePressed() {
  if (modoJuego == 1) {
    juegoAutos.jugarBoton();
  }
}
