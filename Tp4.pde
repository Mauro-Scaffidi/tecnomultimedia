//texto
PFont tipografia;
//imagenes
PImage [] imagenes = new PImage [14];

//variable para cambiar de pantalla 
int pantalla;

boolean click = false;


void setup(){
  size(800, 600);
  tipografia= loadFont("CarroisGothicSC-Regular.ttf.vlw");
  textFont(tipografia);
  
  for (int i= 0; i < 14; i++){
    imagenes[i]=loadImage(i+".jpg");
  }
  
  pantalla= 0;
 
 }
 
 void draw(){
   
   dibujarPantallas(pantalla);
   
 }  
 
 void mouseClicked(){
   click = true;
 }


 
   
   
   
   
 

  
