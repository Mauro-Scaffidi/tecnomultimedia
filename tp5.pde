Juego juego;


void setup(){
  size(700, 600);
  juego= new Juego();
  
  }


void draw(){
  juego.draw();
  juego.update();

  } 


void keyPressed(){
  juego.teclado();
}

void mouseClicked(){
  juego.jugarBoton();
}
  
