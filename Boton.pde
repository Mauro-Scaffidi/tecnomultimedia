//De la linea 2 a la 6 se declaran los atributos de la clase
class Boton {
  float x, y, tamX, tamY;
  String texto;
  Pantalla pantalla;
  boolean tipoNormal;
  Juego juego;

  //En esta linea se crea el constructor de la clase con sus parametros 
  Boton( Juego juego_,String texto_, Pantalla pantalla_, float x_, float y_, float tamX_, float tamY_, boolean tipoNormal_) {
    x=x_;
    y=y_;
    tamX=tamX_;
    tamY=tamY_;
    texto = texto_;
    pantalla = pantalla_;
    juego = juego_;
    
    /*Este parametro en los parametros del boton es lo que determina que tipo de boton es: si en los parametros aparece 
    como true el boton es de tipoNormal(botones de OPCIONES). En cambio, si aparece en los parametros como false, el 
    boton no va a ser de tipoNormal (serian los botones MENU y CONTINUAR)*/
    tipoNormal = tipoNormal_;
  }

  /*La Funcion draw dibuja dos tipos de botones: el boton tipoNormal(opciones de la 
   aventura grafica) y otro diferente(botones Menu y Continuar)*/
  void draw() {
    if (tipoNormal) {
      strokeWeight(2);
      fill(0, 0, 0, 0);
      stroke(255);
      rect( x, y, tamX, tamY);
      fill(255);
      text(texto, x+22, y+43);
    } else {
      textSize(30);
      fill(255);
      text(texto, x+20, y+60);
    }
  }

  /*El metodo Pantalla mouseClicked utiliza un condicional para crear un metodo
   donde si se clickea dentro de los parametros(condicion) que se da en el if
   la funcion cambia de pantalla*/
  void mouseClicked() {
    /*Si el mouse esta dentro del boton y se hace click con el mouse 
    dentro de esa zona el if llama a la funcion de juego cambiarPantalla
    y la pantalla cambia*/
    if (mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY ) {

      /*Se llama a la funcion cambiarPantalla para que al hacer click sobre la zona 
      indicada en los parametros de los botones, se llame a la funcion cambiarPantalla 
      que se encuentra en la clase Juego y asi poder cambiar de panatalla*/
      juego.cambiarPantalla(pantalla);
    }

  }
}
