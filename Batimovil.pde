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
  void draw(){
    tint (255, 255);
    image(imagen2, x, y);
    if( x >= 432 ){
       x=15;     
    }else if(x<=12){
      x=430;
    }if(y>= 610){
      y=-20;
    }else if(y==-30){
      y= 590;
      
    }
  }
    
    void colision(Obstaculo obstaculo1[], Punto logo){
      
       for( int i = 0 ; i < obstaculo1.length ; i++ ){
         if(obstaculo1[i].Yb>= Yd & obstaculo1[i].Xc >= Xd & obstaculo1[i].Xb<Xd){
           
           juego.estado=2;
         
            
         }
         
         
   }
  }
   
   
  
 void moverIzq() {
    if ( keyCode == LEFT )
     x -= 10;
     Xe= Xd + imagen2.width;
 }
 
  void moverDer() {
    if ( keyCode == RIGHT )
      x += 10;
      Xe= Xd + imagen2.width;
  }
  
  
   void moverArrib() {
    if ( keyCode == UP)
      y -= 10;
      Ye= Yd;
}
   

 void moverAbajo() {
    if ( keyCode == DOWN )
      y += 10;
      Ye= Yd;
  } 
 }
