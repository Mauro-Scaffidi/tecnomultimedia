class Obstaculo{
  
  float x, y;  //coordenadas
  float Xb,Yb; //punto inferior izquierdo del obstaculo
  float Xc,Yc; //punto inferior derecho del obstaculo
  float velocidad;
  PImage auto;  //reemplaza al 'relleno'


  //CONSTRUCTOR (el "setup" de la clase, el primer método que se ejecuta)
  Obstaculo() {
    auto= loadImage("obstaculo 1.png");
    x= random(15, 420);
    y= random(-400, -30);
   
   //punto inferior izquierdo del obstaculo
    Xb= x;
    Yb= y + auto.height;
    
    //punto inferior derecho del obstaculo
    Xc= x +  auto.width;
    Yc= Yb;
    
    velocidad = 2;
     
   }
  

  //Métodos (funciones)
  void update() {  //los calculos matemáticos de movimiento
    //y = y + velocidad;
    y += velocidad;
    Yb +=velocidad;
    Yc +=velocidad;
    
    reciclar();
  }

  void draw() {  //las funciones de dibujo en si
    tint (255, 255);
    image( auto, x, y );
  }

  void reciclar() {
    if ( y > 570) {
      x = random(15, 420);
      Xb= x;
      Yb= y+ auto.height;
      y = random(-400, -30);
      Xc= x +  auto.width;
      Yc= Yb;
      velocidad = 2;
    }
  }
}
  
