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

  
  void mouseClicked() {
    if (mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY ) {
      
      juego.cambiarPantalla(pantalla);
    }

  }
}
