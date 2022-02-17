/*La clase Juego es donde interactuan todas las demas clases para formar el programa, 
 aca es donde a partir de los objetos se crea la aventura grafica*/
class Juego {
  //Defino la variable para guardar el arreglo de pantallas
  Pantalla[] pantallas;
  Pantalla pantallaActual;

  //Constructor de la clase Juego
  Juego() {
    PFont fuente = loadFont("CarroisGothicSC-Regular.ttf.vlw");
    // Creo el arreglo de pantallas para las mismas de la aventura grafica
    pantallas= new Pantalla[16];


    pantallas[1]= new PantallaJuego(loadImage("1.jpg"), 0, -10);
    pantallas[1].agregarTexto(new Texto("Bruce Wayne se encuentra en la Mansion Wayne.", 30, 425, fuente, 30, 255));
    pantallas[1].agregarTexto(new Texto("Alli su compañia esta llevando a cabo un evento benefico en donde", 30, 475, fuente, 30, 255));
    pantallas[1].agregarTexto(new Texto("el entregara una gran donacion a la ciudad.", 30, 525, fuente, 30, 255));                                     


    pantallas[2]= new PantallaJuego(loadImage("2.jpg"), 0, -0);
    pantallas[2].agregarTexto(new Texto("Durante el evento, Alfred le avisa a Bruce lo que esta ocurriendo ", 30, 425, fuente, 30, 255));   
    pantallas[2].agregarTexto(new Texto("en el banco de Gotham. El joker lo esta atacando.", 30, 475, fuente, 30, 255));


    pantallas[3]= new PantallaJuego(loadImage("3.jpg"), -80, 0);
    pantallas[3].agregarTexto(new Texto("Batman decidi ir a atrapar al Joker ", 30, 425, fuente, 30, 255));
    pantallas[3].agregarTexto(new Texto("y defender el banco ", 30, 475, fuente, 30, 255));     


    pantallas[4]= new PantallaJuego(loadImage("4.jpg"), 0, 0);
    pantallas[4].agregarTexto(new Texto("Bruce Wayne se queda en el evento por el bien de su compañia. ", 30, 425, fuente, 30, 255));
    pantallas[4].agregarTexto(new Texto("El Joker roba el banco.", 30, 475, fuente, 30, 255));                                      
    pantallas[4].agregarTexto(new Texto("Gotham se pregunta: Donde esta Batman?", 30, 525, fuente, 30, 255)); 


    pantallas[5]= new PantallaJuego(loadImage("5.jpg"), 0, -35);
    pantallas[5].agregarTexto(new Texto("Al llegar al banco Jim Gordon le informa lo que esta", 30, 425, fuente, 30, 255));
    pantallas[5].agregarTexto(new Texto("ocurriendo: el Joker acaba de robar el banco y tiene razones para creer ", 30, 475, fuente, 30, 255));                                      
    pantallas[5].agregarTexto(new Texto("que esta a algunas calles del lugar. Hay que encontrarlo.", 30, 525, fuente, 30, 255));  


    pantallas[6]= new PantallaJuego(loadImage("6.jpg"), 0, -35);
    pantallas[6].agregarTexto(new Texto("Batman encuentra al Joker y este al verlo", 30, 425, fuente, 30, 255));
    pantallas[6].agregarTexto(new Texto("trata de escapar.", 30, 475, fuente, 30, 255));     


    pantallas[7]= new PantallaJuego(loadImage("6.jpg"), 0, -35);
    pantallas[7].agregarTexto(new Texto("Como perseguirlo?", 30, 425, fuente, 30, 255));


    pantallas[8]= new PantallaJuego(loadImage("7.jpg"), -20, 0);
    pantallas[8].agregarTexto(new Texto("Batman lo persigue a pie pero lo pierde.", 30, 425, fuente, 30, 255));
    pantallas[8].agregarTexto(new Texto("Sus compañeros lo estaban esperando a unas calles con un", 30, 475, fuente, 30, 255)); 
    pantallas[8].agregarTexto(new Texto("auto de policia para escapar.", 30, 520, fuente, 30, 255)); 


    //PANTALLA 9                                   
    pantallas[9]= new PantallaJuego(loadImage("8.jpg"), -40, -30);
    pantallas[9].agregarTexto(new Texto("Batman lo persigue en su moto pero parece", 30, 425, fuente, 30, 255));
    pantallas[9].agregarTexto(new Texto("que el Joker puede escapar", 30, 475, fuente, 30, 255));   
    //-------------------------------------------------------------------------------------------


    pantallas[10]= new PantallaJuego(loadImage("8.jpg"), -40, -30);
    pantallas[10].agregarTexto(new Texto("Batman va a perderlo de vista, hay que hacer algo.", 30, 425, fuente, 30, 255));


    pantallas[11]= new PantallaJuego(loadImage("9.jpg"), -30, 0);
    pantallas[11].agregarTexto(new Texto("Robin intercepta al Joker y junto a Batman", 30, 425, fuente, 30, 255));
    pantallas[11].agregarTexto(new Texto("se enfrenta a el y sus ayudantes.", 30, 475, fuente, 30, 255));  


    pantallas[12]= new PantallaJuego(loadImage("10.jpg"), -30, 0);
    pantallas[12].agregarTexto(new Texto("Batman casi atropella a un peaton. Eso hizo que pierda", 30, 425, fuente, 30, 255));
    pantallas[12].agregarTexto(new Texto("el control de la moto y el Joker pueda escapar.", 30, 475, fuente, 30, 255));                


    pantallas[13]= new PantallaJuego(loadImage("11.jpg"), 0, 0);
    pantallas[13].agregarTexto(new Texto("Lo heroes de Gotham logran vencerlos.", 30, 425, fuente, 30, 255));
    pantallas[13].agregarTexto(new Texto("El Joker y sus secuaces son llevados por ambos al departamento de policias.", 30, 475, fuente, 30, 255));  
    pantallas[13].agregarTexto(new Texto("Alli, los esta esperando Jim Gordon para encerrar a los ladrones", 30, 520, fuente, 30, 255));     

    pantallas[14]= new PantallaJuego(loadImage("12.jpg"), 0, 0);
    pantallas[14].agregarTexto(new Texto("El Joker es encarcelado.", 30, 425, fuente, 30, 255));  

    //Pantalla[15]= pantalla de creditos del programa
    pantallas[15] = new PantallaCreditos(this);

    //Pantalla[0]= pantalla de menu inicial del programa
    pantallas[0] = new PantallaMenu(this);

    pantallas[15].agregar1Opcion(this, "", null);


    //Se agregan los botones a las pantallas
    pantallas[1].agregar1Opcion(this, "CONTINUAR>>", pantallas[2]);
    pantallas[2].agregar2Opciones(this, "    Atrapar al Joker", pantallas[3], "Quedarse en la fiesta", pantallas[4]);
    pantallas[3].agregar1Opcion(this, "CONTINUAR>>", pantallas[5]);
    pantallas[4].agregar1Opcion(this, "      MENU>>", pantallas[0]);
    pantallas[5].agregar1Opcion(this, "CONTINUAR>>", pantallas[6]);
    pantallas[6].agregar1Opcion(this, "CONTINUAR>>", pantallas[7]);
    pantallas[7].agregar2Opciones(this, "        Corriendo", pantallas[8], "     Batimovil(moto)", pantallas[9]);
    pantallas[8].agregar1Opcion(this, "      MENU>>", pantallas[0]);
    pantallas[9].agregar1Opcion(this, "CONTINUAR>>", pantallas[10]);
    pantallas[10].agregar2Opciones(this, "     Llamar a Robin", pantallas[11], "Aumentar la velocidad", pantallas[12]);
    pantallas[11].agregar1Opcion(this, "CONTINUAR>>", pantallas[13]);
    pantallas[12].agregar1Opcion(this, "      MENU>>", pantallas[0]);
    pantallas[13].agregar1Opcion(this, "CONTINUAR>>", pantallas[14]);
    pantallas[14].agregar1Opcion(this, "      MENU>>", pantallas[0]);



    //PantallaActual= pantallas[n];
    pantallaActual = pantallas[0];
  }

  void draw() {
    pantallaActual.draw();
  }

  void mouseClicked() {
    pantallaActual.mouseClicked();
  }


  void cambiarPantalla(Pantalla pantalla) {
    pantallaActual = pantalla;
  }
}
