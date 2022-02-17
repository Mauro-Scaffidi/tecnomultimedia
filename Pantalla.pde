interface Pantalla{
  //funciones
  void draw();
  void mouseClicked();
  void agregar1Opcion(Juego juego, String texto, Pantalla pantalla);
  void agregar2Opciones(Juego juego, String texto1, Pantalla pantalla1, String texto2, Pantalla pantalla2);
  void agregarTexto(Texto texto);
}
