class Escenario {
  float x, y; 
  PImage calle;
  float velocidad;
  PFont letra;
  PImage vida;
  float movimiento;
  int puntos;
  int opacidad;
  int col;
  int salud;

  Escenario() {
    x= width;
    y= height;
    velocidad= 3;
    calle= loadImage("escenario1.jpg");
    letra= loadFont("CarroisGothicSC-Regular.ttf.vlw");
    vida= loadImage("vida.png");
    movimiento= 0; 
    puntos=0;
    opacidad= 0;
    col=0;
    salud= 100;
  }

  void draw() {
    movimiento+= 4;
    image(calle, -15, movimiento-300);
    fill(0);
    rect(480, 0, 600, 600);
    fill(255);
    textFont(letra);
    textSize(40);
    text("Puntuacion", 520, 150);
    text(puntos, 545, 215);
    text("/100", 589, 215);
    image(vida, 485, 300);
    fill(0, 0, 0, opacidad);
    strokeWeight(0);
    stroke(0);
    rect(490, 300, 200, 170);
    fill(255);
    text("Salud", 520, 530);
    text(salud, 620, 530);


    if (movimiento> 94) {
      movimiento=0;
    }
  }

  void vida() {
    opacidad+=85;
    if (opacidad== 85) {
      salud=50;
    }
    if (opacidad==170) {
      salud=25;
    }
    if (opacidad == 255) {
      salud=0;
    }
  }


  void puntos() {
    puntos+=10;
  }


  void update() { 
    if (juego.estado==1) {
      y=y-3;
      reciclar();
    }
  }

  void reciclar() {
    if (y>=-10) {
      y = -300;
      velocidad=4;
    }
  }
}
