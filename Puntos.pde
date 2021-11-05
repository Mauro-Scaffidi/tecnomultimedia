class Punto{
  float x, y;  //coordenadas
  float velocidad;
  PImage logo;  //reemplaza al 'relleno'
  
Punto(){
  logo=loadImage("LogoBatman.png");
  x= random(10, 400);
  y= random(-100, -30);
  velocidad = 2;
  
 }

 //Métodos (funciones)
  void update() {  //los calculos matemáticos de movimiento
    //y = y + velocidad;
    y += velocidad;
    reciclar();
  }

  void draw() {  //las funciones de dibujo en si
    image( logo, x, y );
  }

  void reciclar() {
    if ( y > 580) {
      x = random(15, 420);
      y = random(-130, -30);
      velocidad = 2;
    }
  }
}
  
