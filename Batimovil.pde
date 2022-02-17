class Batimovil {
  //Propiedades
  float x;
  float y;
  float Xe, Ye;
  float Xd, Yd;
  float  H;
  PImage imagen2;


  //Constructor
  Batimovil(float x_, float y_) {
    imagen2= loadImage("batimovil.png");
    x= x_;
    y=y_;

    //punto superior izquierdo
    Xd= x; 
    Yd= y;

    //punto superior derecho
    //Xe, Ye
    Xe= Xd + imagen2.width;
    Ye= Yd;

    H= imagen2.height;
  }

  //Metodos
  void draw() {
    image(imagen2, x, y);
    if ( x >= 432 ) {
      x=15;
    } else if (x<=12) {
      x=430;
    }
    if (y>= 610) {
      y=-20;
    } else if (y==-30) {
      y= 590;
    }
  }


  void colision(Obstaculo obstaculo1[], Punto logo, Escenario sumar) {

    for ( int i = 0; i < obstaculo1.length; i++ ) {
      if (obstaculo1[i].Yb >= Yd && obstaculo1[i].Xc >= Xd && obstaculo1[i].Xb <= Xe) {
        if (obstaculo1[i].y <= y+imagen2.height) {


          sumar.vida();
          obstaculo1[i].cambiar();
        }
      }
      if (logo.Yg >= Yd && logo.Xh >= Xd && logo.Xg <= Xe) {
        if (logo.y <= logo.Yg) {

          sumar.puntos();
          logo.cambiar();
        }
      }
    }
  }



  void moverIzq() {
    if ( keyCode == LEFT && juegoAutos.estado==1) {
      x -= 10;
      Xd= x;
      Xe= Xd + imagen2.width;
    }
  }

  void moverDer() {
    if ( keyCode == RIGHT && juegoAutos.estado==1 ) {
      x += 10;
      Xd= x;
      Xe= Xd + imagen2.width;
    }
  }


  void moverArrib() {
    if ( keyCode == UP && juegoAutos.estado==1) {
      y -= 10;
      Yd= y;
      Ye= Yd;
    }
  }


  void moverAbajo() {
    if ( keyCode == DOWN && juegoAutos.estado==1 ) {
      y += 10;
      Yd= y;
      Ye= Yd;
    }
  }
}
