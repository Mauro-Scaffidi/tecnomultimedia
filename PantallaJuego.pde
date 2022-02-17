//Pantallas de la aventura grafica(tp4)
class PantallaJuego implements Pantalla {
  PImage imagen;
  /*Se declara dos listas de arreglos: una para el texto de la pantallas y otra para 
   los botones. Estos son arreglos de tamaño variable.*/
  ArrayList<Texto> textos = new ArrayList<Texto>();
  ArrayList<Boton> botones = new ArrayList<Boton>();
  float x, y;

  //Constructor de la clase Pantalla
  PantallaJuego(PImage imagen_, float x_, float y_) {
    imagen=imagen_;
    x=x_;
    y=y_;
  }

  /*En la funcion draw de la clase pantalla se dibuja la imagen, el fondo del texto, 
   el texto y los botones de las pantallas*/
  void draw() {
    tint(255, 255);
    image(imagen, x, y);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    //Los for que se encuentra en este draw dibujan los botones y los textos de las pantallas
    //Llama a la funcion draw todos los textos del arreglo
    for (int i = 0; i < textos.size(); i ++) {
      textos.get(i).draw();
    }
    //Llama a la funcion draw de todos los botones del arreglo
    for (int i = 0; i < botones.size(); i ++) {
      botones.get(i).draw();
    }
  }

  /*Funcion que llama al constructor de la clase texto y se utiliza en la clase juego
   para agregar texto a las pantallas*/
  void agregarTexto(Texto texto) {
    //Para agregar un elemento a un arreglo de tamaño variable se usa esta funcion
    textos.add(texto);
  }

  /*En estas lineas se crea una funcion y sus parametros determinan un flujo de
   pantallas a partir de botones. Estos botones son instancias de la clase boton*/
  void agregar2Opciones(Juego juego, String texto1, Pantalla pantalla1, String texto2, Pantalla pantalla2) {
    botones.add(new Boton(juego, texto1, pantalla1, 100, 505, 250, 65, true));
    botones.add(new Boton(juego, texto2, pantalla2, 400, 505, 250, 65, true));
  }

  /*Esta funcion hace algo similar a la funcion anterior ya que determina el flujo
   de pantalla tambien pero a diferencia de la anterior esta te da a elegir solo una 
   opcion. Ademas tambien utiliza una instancia de la clase boton*/
  void agregar1Opcion(Juego juego, String texto, Pantalla pantalla) {
    botones.add(new Boton(juego, texto, pantalla, 630, 520, 200, 65, false));
  }

  /*Esta funcion lo que hace es ejecutar la accion de los botones. Utiliza un for 
   en donde llama el mouseClicked de la clase boton para ver cual de todos los botones fue clickeado
   y luego utiliza un if para retornar pantallaSiguiente si la misma no es null*/
  void mouseClicked() {
    /*En la siguiente linea se llama a todos los botones del Arraylist para saber cual fue 
     presionado y asi ejecutarlo*/
    for (int i = 0; i < botones.size(); i ++) {
      botones.get(i).mouseClicked();
    }
  }
}
