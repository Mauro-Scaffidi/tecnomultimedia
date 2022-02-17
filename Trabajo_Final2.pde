/*En esta pestaña del programa es donde se ejecuta todo, todo lo que esta escrito
 en Trabajo_Final2 es lo que se va a ejecutar y ver en el trabajo. Por esta razon, en
 esta parte se llama y se utiliza la clase Juego, que es donde todas las clases
 del programa se juntan para hacer funcionar la aventura.
 */
//Declaracion del objeto Juego(instancia de la clase con el mismo nombre)
Juego juego;
JuegoAutos juegoAutos;

/*Se declara la variable "modoJuego" que va a servir como la variable que va a determinar 
 cuando aparece el juego en pantalla y cuando no*/
int modoJuego = 0;

//Aca se define el tamaño que tendra la pantalla y se asigna el valor de juego
void setup() {
  size(800, 600);
  juego= new Juego();
  juegoAutos= new JuegoAutos();
}

/*En la funcion draw de esta pestaña se llama a la funcion draw de la clase Juego
 y al draw de la clase JuegoAutos. Segun el valor que tenga modoJuego se dibuja el
 juego o la aventura grafica y este bvalor va cambiando a partir de unos condicionales*/
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

/*En estas lineas pasa algo similar a lo que ocurre en void draw. Se utiliza la
 funcion mouseClicked para llamar y ejecutar el mouseClicked de la clase Juego siempre
 y cuando el if sea verdadero*/
void mouseClicked() {
  if (modoJuego == 0) {
    juego.mouseClicked();
  }
}

/*En el keyPressed se llama a la funcion teclado de la clase juegoAutos y solo se
 utiliza si el valor de a variable "modoJuego" es igual a 1, si no es asi, la funcion no 
 se utiliza.*/
void keyPressed() {
  if (modoJuego == 1) {
    juegoAutos.teclado();
  }
}

/*En el mousePressed ocurre lo mismo que con el keyPressed de esta pestaña, 
 en el se llama a la funcion jugarBoton de la clase juegoAutos y solo funciona 
 si el valor de modoJuego es igual a 1*/
void mousePressed() {
  if (modoJuego == 1) {
    juegoAutos.jugarBoton();
  }
}
