class Texto {
  String texto;
  float x;
  float y;
  PFont fuente;
  float tamano;
  color col; 

  //Se crea un constructor para la clase textos 
  Texto(String texto_, float x_, float y_, PFont fuente_, float tamano_, color col_) {
    texto = texto_;
    x = x_;
    y = y_;
    fuente= fuente_;
    tamano= tamano_;
    col=col_;
  }

  /*En el draw de la clase se dibuja los parametros del constructor y es lo que dibuja 
   los parametros que uno elige al texto*/
  void draw() {
    textFont(fuente);
    textSize(tamano);
    fill(col);
    text(texto, x, y);
  }
}
