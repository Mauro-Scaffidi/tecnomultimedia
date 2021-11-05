class Escenario{
  float x, y; 
  PImage calle;
  float velocidad;
  PFont letra;
  PImage vida;
  
  Escenario(){
  x= width;
  y= height;
  velocidad= 3;
  calle= loadImage("escenario1.jpg");
  letra= loadFont("CarroisGothicSC-Regular.ttf.vlw");
  vida= loadImage("vida.png");
 
}
  
  void draw(){
    image(calle, -15,-300);
    fill(0);
    rect(480, 0, 600, 600);
    fill(255);
    textFont(letra);
    textSize(40);
    text("Puntuacion", 520, 150);
    text("0", 585, 215);
    tint (255, 90);
    image(vida, 485, 350);
    
    
 }
 
 void update() { 
   y=y-3;
   reciclar();
  }
  
  void reciclar() {
    if(y>=-10); {
     y = -300;
     velocidad=3;
    }
  }
}
 
 
