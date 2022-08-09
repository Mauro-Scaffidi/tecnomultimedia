import fisica.*;

FWorld mundo;
FCircle pelota, pelota1;
FBox jugador1, pared, pared2, pared3, pared4;


//Imagen de la pelota
PImage imagen_pelota;

void setup(){
  size(950, 500);
  
  Fisica.init(this);
  mundo= new FWorld();
  mundo.setGravity(0,0);
  mundo.setEdges();
  mundo.remove(mundo.left);
  mundo.remove(mundo.right);
  
  //Pelota(disco)
  pelota= new FCircle(50);
  pelota.setPosition(width/2, height/2);
  pelota.setRestitution(0.8);
  pelota.setDensity(20);
 
  
  //pelota1= new FCircle(50);
  //pelota1.setPosition(width/2, height/2);
  //pelota1.setRestitution(0.8);
  //pelota1.setDensity(5);
  
  //Intento de jugador
  jugador1= new FBox(50, 90);
  jugador1.setPosition(width/2+200, height/2);
  jugador1.setStatic(true);
  jugador1.setDensity(50);
  
  //Arco lado izquierdo
  pared= new FBox(10, 190);
  pared.setPosition(0, 100);
  pared.setStatic(true);
  pared.setDensity(100);
  
  pared2= new FBox(10, 190);
  pared2.setPosition(0, 400);
  pared2.setStatic(true);
  pared2.setDensity(100);
  
  //Arco lado derecho
  pared3= new FBox(10, 190);
  pared3.setPosition(950, 100);
  pared3.setStatic(true);
  pared3.setDensity(100);
  
  pared4= new FBox(10, 190);
  pared4.setPosition(950, 400);
  pared4.setStatic(true);
  pared4.setDensity(100);
  
  //Para añadir objetos al mundo
  mundo.add(pared); 
  mundo.add(pared2);
  mundo.add(pared3);
  mundo.add(pared4);
  mundo.add(pelota);
  mundo.add(pelota1);
  mundo.add(jugador1);
  
  imagen_pelota= loadImage("Pelota tejo.png");
  
}


void draw(){
  background(0, 100, 0);
  pelota.attachImage(imagen_pelota);
  mundo.step();
  mundo.draw();
  
}
