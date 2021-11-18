class Punto {
  float x, y;  //coordenadas
  float velocidad;
  PImage logo;  //reemplaza al 'relleno'
  float Xg, Yg;
  float Xh, Yh;

  Punto() {
    logo=loadImage("LogoBatman.png");

    x= random(10, 400);
    y= random(-100, -30);

    //punto inferior izquierdo
    Xg= x;
    Yg= y + logo.height;

    //punto inferior derecho
    Xh= x + logo.width;
    Yh= Yg;

    velocidad = 4;
  }

  //Métodos (funciones)
  void update() {  //los calculos matemáticos de movimiento
    //y = y + velocidad;
    if (juego.estado==1) {
      y += velocidad;
      Yg += velocidad;
      Yh += velocidad;
      reciclar();
    }
  }

  void draw() {  //las funciones de dibujo en si
    image( logo, x, y );

    //punto F, donde se dibuja el logo 
    /*
    fill(0,0, 255);
     circle(x, y, 10);
     
     //punto g
     fill(0,255,0);
     circle(Xg, Yg, 10);
     
     //punto h
     fill(255,0, 0);
     circle(Xh, Yh, 10);
     */
  }

  void reciclar() {
    if ( y > 580) {
      x = random(15, 420);
      Xg= x;
      Xh= x + logo.width;

      y = random(-130, -30);
      Yg= y + logo.height;
      Yh= Yg;

      velocidad = 4;
    }
  }

  //funcion que hace que los objetos "desaparezcan" al colisionar con el Batimovil
  void cambiar() {
    x = random(15, 420);
    Xg= x;
    Xh= x + logo.width;

    y = random(-130, -30);
    Yg= y + logo.height;
    Yh= Yg;

    velocidad = 4;
  }
}
