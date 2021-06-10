//texto: titulo
PFont letraStarwars;

//imagen: estrellas
PImage fondo;

//Variable Asignacion
int disminuir;
color celeste;
int transparencia;
int pantalla= 0;

void setup(){
  size(600, 600);
  colorMode(HSB);
  colorMode(HSB, 360, 100, 100);
  smooth();
  
  //fuente de las letras
  letraStarwars= loadFont("FranklinGothic-Demi-48.vlw");
  textFont(letraStarwars);
  
  //fondo estrellas
  fondo=loadImage("Fondo.png");
  
  //color de las letras
  celeste= color(205, 82, 95);
  transparencia= (255);

  
}
    
void draw(){
  
  //fondo
  image(fondo, 0, 0, 600, 600);
  
  //Titulo
  fill(celeste, transparencia);
  if(pantalla < 7){
  transparencia--;
  }
  textAlign(CENTER);
  
  //Titulo
  if(pantalla == 0){
    textSize(45);
    text("STAR WARS", width/2, height/2 +15 );
  
  
    //Direccion
    }else if (pantalla ==1){
    textSize(30);
    text("Escrito y Dirigo por", width/2, height/2);
    textSize(35);
    text("GEORGE LUCAS", width/2, height/2 + 40);
  
    //Musica
    }else if(pantalla==2){
    textSize(30);
    text("Musica por", width/2, height/2);
    textSize(35);
    text("JOHN WILLIAMS", width/2, height/2 + 40);
 
    //Protagonistas
    }else if(pantalla==3){
    textSize(30);
    text("Protagonistas", width/2, height/2);
    textSize(35);
    text("LIAM NEESON", width/2, height/2 + 40);
   
    }else if(pantalla==4){
    textSize(35);
    text("EWAN McGREGOR", width/2, height/2 + 40);
  
  
    //Co-protagonistas
    }else if(pantalla==5){
    textSize(30);
    text("Co-Protagonistas", width/2, height/2);
    textSize(35);
    text("IAN McDIARMIN", width/2, height/2 + 40);

    }else if(pantalla==6){
    textSize(35);
    text("OLIVER FORD DAVIES", width/2, height/2 + 40);
  }
 
 if (transparencia <= 0){ 
    pantalla++;
    transparencia= 255;
 }
}
  
void keyPressed(){
    if(key == 'r'){
     pantalla= 0;
     transparencia= 255;
    
         
    }
}
