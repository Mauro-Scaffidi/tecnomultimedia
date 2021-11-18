//https://youtu.be/Ta9eqafpCWg

Juego juego;


void setup() {
  size(700, 600);
  juego= new Juego();
}


void draw() {
  juego.draw();
} 


void keyPressed() {
  juego.teclado();
}

void mousePressed() {
  juego.jugarBoton();
}
