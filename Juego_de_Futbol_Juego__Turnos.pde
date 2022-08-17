import fisica.*;

FWorld mundo;
FCircle pelota, pelota1;
FBox defensa1, defensa2, defensa3, pared, pared2, pared3, pared4;


//Imagen de la pelota
PImage imagen_pelota;

void setup(){
  size(900, 800);
  
  Fisica.init(this);
  mundo= new FWorld();
  mundo.setGravity(0,0);
  mundo.setEdges();
  mundo.remove(mundo.right);
  
  //Pelota(disco)
  pelota= new FCircle(50);
  pelota.setPosition(width/2, height/2);
  pelota.setRestitution(0.5);
  pelota.setDensity(20);
 
  //Jugador
  pelota1= new FCircle(50);
  pelota1.setPosition(width/2, height/2);
  pelota1.setDamping(100);
  pelota1.setRestitution(0.5);
  pelota1.setDensity(5);
  
  //Defensas que el jugador contrario maneja 
  defensa2= new FBox(40, 40);
  defensa2.setPosition(width/2+200, height/2);
  defensa2.setStatic(true);
  defensa2.setDensity(50);
  
  defensa3= new FBox(40, 40);
  defensa3.setPosition(width/2+300, height/2+100);
  defensa3.setStatic(true);
  defensa3.setDensity(50);
  
  defensa1= new FBox(40, 40);
  defensa1.setPosition(width/2+280, height/2-100);
  defensa1.setStatic(true);
  defensa1.setDensity(50);
  
  //Arco lado izquierdo
  //pared= new FBox(10, 190);
  //pared.setPosition(0, 100);
  //pared.setStatic(true);
  //pared.setDensity(100);
  
  //pared2= new FBox(10, 800);
  //pared2.setPosition(0, 300);
  //pared2.setStatic(true);
  //pared2.setDensity(100);
  
  //Arco lado derecho
  pared3= new FBox(20, 300);
  pared3.setPosition(900, 100);
  pared3.setStatic(true);
  pared3.setDensity(100);
  
  pared4= new FBox(20, 300);
  pared4.setPosition(900, 700);
  pared4.setStatic(true);
  pared4.setDensity(100);
  
  //Para añadir objetos al mundo
  mundo.add(pared); 
  mundo.add(pared2);
  mundo.add(pared3);
  mundo.add(pared4);
  mundo.add(pelota);
  mundo.add(pelota1);
  mundo.add(defensa1);
  mundo.add(defensa2);
  mundo.add(defensa3);
  
  imagen_pelota= loadImage("Pelota tejo.png");
  
  
}


void draw(){
  background(0, 100, 0);
  pelota.attachImage(imagen_pelota);
  mundo.step();
  mundo.draw();
  

  
}
