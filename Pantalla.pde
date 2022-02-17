/*La interface permite que las funciones de las clases (PantallaCreditos, PantallaJuego y PantallaMenu) se puedan relacionar 
mas facilmente entre ellas. Esto, debido a que la interface hace que las funciones sean todas del mismo tipo de valor. Asi, 
el uso de una interface en este trabajo permite que solo se tenga que llamar a una funcion para que las demas funciones se 
puedan utilizar tambien, al estar todas en una misma interface no es necesario poner todas las funciones y condicionales 
con ellas para que el programa sepa cual es la funcion que hay ejecutar dentro de la funcion(draw, mouseClicked, etc).*/
interface Pantalla{
  //funciones
  void draw();
  void mouseClicked();
  void agregar1Opcion(Juego juego, String texto, Pantalla pantalla);
  void agregar2Opciones(Juego juego, String texto1, Pantalla pantalla1, String texto2, Pantalla pantalla2);
  void agregarTexto(Texto texto);
}
