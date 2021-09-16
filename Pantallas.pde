//Aca se ACTUALIZAN las PANTALLAS, cambian las pantallas
void actualizarPantallas(int _pantalla, boolean _camino) {
  if (_pantalla == 0) {
    if (_camino) { //Jugar
      pantalla = 1;
    } else { //Creditos
      pantalla = 15;
    }
  }
  if (_pantalla == 1) {
    if (_camino) {
      pantalla = 2;
    }
  }
  if (_pantalla == 2) { 
    if (_camino) {
      pantalla = 3;
    }else{
      pantalla = 4;
  }
 }
 if(_pantalla == 3) {
   if(_camino) {
     pantalla = 5; 
   } 
 }
  if(_pantalla == 5) {
   if(_camino) {
     pantalla = 6; 
   }
  }
  if(_pantalla == 6) {
    if(_camino) {
      pantalla = 7;
    }
  }
  if(_pantalla == 7) {
    if(_camino) {
      pantalla = 8;
    }else{
      pantalla= 9;
    }
  }
  if(_pantalla == 9) {
    if(_camino) {
      pantalla= 10;
    }
  }
  if (_pantalla == 10) {
    if (_camino) { //Jugar
      pantalla = 11;
    } else { //Creditos
      pantalla = 12;
    }
  }
  if(_pantalla == 11) {
    if(_camino) {
      pantalla= 13;
    }
  }
  if(_pantalla == 13) {
    if(_camino) {
      pantalla = 14;
    }
  }
  if(_pantalla == 14) {
    if(_camino) {
      pantalla = 15;
    }
  }
  if(_pantalla == 15) {
    if(_camino) {
      pantalla = 0;
    }
  }
    if(_pantalla == 4) {
    if(_camino) {
      pantalla = 0;
    }
  }
  if(_pantalla == 8) {
    if(_camino) {
      pantalla = 0;
    }
  }
  if(_pantalla == 12) {
    if(_camino) {
      pantalla = 0;
    }
  }
}
//Aca se CREA el CONTENIDO de cada PANTALLA
void dibujarPantallas(int pantalla) {
  
  //todo lo de la pantalla 0 (Menu de inicio)
  if ( pantalla==0) {

    fill(255);
    tint(150, 150);
    image(imagenes [0], -100, -210);
    textAlign(LEFT, TOP);
    textSize(65);
    text("BATMAN", 115, 240);

    textSize(55);
    text("JUGAR", 140, 330);

    textSize(50);
    text("CREDITOS", 120, 400);

    fill(0, 0, 0, 0);
    noStroke();
    botonRectangular(135, 327, 120, 50, 0);

    fill(0, 0, 0, 0);
    noStroke();
    botonRectangular(120, 400, 160, 40, 1);
  }
  //Pantalla 1: Bruce Wayne en la fiesta
  if (pantalla == 1) {
    tint(255, 255);
    background(255);
    image(imagenes [1], 0, -10);
    fill(0);
    rect(0, 355, 800, 600);
    fill(255);
    textSize(30);
    text("Bruce Wayne se encuentra en la Mansion Wayne.", 30, 400);
    text("Alli su compañia esta llevando a cabo un evento benefico en donde", 30, 450);
    text("el entregara una gran donacion a la ciudad.", 30, 500);
    text("CONTINUAR>>", 650, 560);
    //fill(0,0,0,0);
    //noStroke();
    botonRectangular( 650, 540, 130, 50, 0);
  }
  //Pantalla 2: Alfred, opciones de pantalla 3 y pantalla 4
  if (pantalla == 2) {
    tint(255, 255);
    background(255);
    image(imagenes [2], 0, 0);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Durante el evento, Alfred le avisa a Bruce lo que esta ocurriendo", 30, 400);
    text("en el banco de Gotham. El joker lo esta atacando.", 30, 450);
    
    strokeWeight(2);
    fill(0,0,0,0);
    stroke(255);
    rect( 100, 505, 200, 65);
    fill(255);
    text("Atrapar al Joker", 123, 523);
    botonRectangular(100, 505, 200, 65,0);
   
    fill(0,0,0,0);
    stroke(255);
    rect(400, 505, 250, 65);
    fill(255);
    text("Quedarse en la fiesta", 423, 523);
    botonRectangular(400, 505, 250, 65,1);
  }
  //Pantalla 3: Atrapar al joker
  if(pantalla== 3){
    tint(255, 255);
    background(255);
    image(imagenes[3],-80,0);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Batman decidi ir a atrapar al Joker", 30, 400);
    text("y defender el banco.", 30, 450);
    text("CONTINUAR>>", 650, 560);
    botonRectangular(650, 560,130,30,0);
    
  }
  //Pantalla 4: Quedarse en la fiesta
  if(pantalla == 4){
    tint(255, 255);
    background(255);
    image(imagenes [4], 0, 0);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Bruce Wayne se queda en el evento por el bien de su compañia.", 30, 400);
    text("El Joker roba el banco.", 30, 450);
    text("Gotham se pregunta: Donde esta Batman?", 30, 500);
    text("MENU>>", 690, 560);
    botonRectangular(690, 560,130,30,0);
  }
  //Pantalla 5: batman llega al lugar
  if(pantalla == 5){
    tint(255, 255);
    background(255);
    image(imagenes[5], 0,-35);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Al llegar al banco Jim Gordon le informa lo que esta", 30, 400);
    text("ocurriendo: el Joker acaba de robar el banco y tienen razones para creer", 30, 450);
    text("que esta a unas calles del lugar. Hay que encontrarlo.", 30, 500);
    text("CONTINUAR>>", 650, 560);
    botonRectangular(650, 560,130,30,0);
    }
    //Pantalla 6: el joker ve a batman y escapa del lugar
    if(pantalla == 6){
    tint(255, 255);
    background(255);
    image(imagenes[6], 0,-35);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Batman encuentra al joker y este al verlo", 30, 400);
    text("trata de escapar.", 30, 450);
    text("CONTINUAR>>", 650, 560);
    botonRectangular(650, 560,130,30,0);
    }
    //Pantalla 7: como perseguir al joker?
    if(pantalla == 7){
    tint(255, 255);
    background(255);
    image(imagenes[6], 0,-35);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Como perseguirlo?", 30, 400);
    
    strokeWeight(2);
    fill(0,0,0,0);
    stroke(255);
    rect( 100, 505, 200, 65);
    fill(255);
    text("Corriendo", 150, 523);
    botonRectangular(100, 505, 200, 65,0);
   
    fill(0,0,0,0);
    stroke(255);
    rect(400, 505, 250, 65);
    fill(255);
    text("Batimovil(moto)", 450, 523);
    botonRectangular(400, 505, 250, 65,1);
    
    }
    //Pantalla 8: batman persigue al Joker a pie
    if (pantalla == 8) {
    tint(255, 255);
    background(255);
    image(imagenes [7], -20,0);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Batman lo persigue a pie pero lo pierde. ", 30, 400);
    text("Sus compañeros lo estaban esperando a unas calles con un", 30, 450);
    text("auto de policia para escapar.", 30, 500);
    text("CONTINUAR>>", 650, 560);
    botonRectangular(650, 560,130,30,0);
      
    }
    //Pantalla 9: batman lo persigue con el batimovil
    if (pantalla == 9) {
    tint(255, 255);
    background(255);
    image(imagenes[8], -40,-30);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Batman lo persigue en su Batimovil pero parece", 30, 400);
    text("que el Joker puede escapar.", 30, 450);
    text("CONTINUAR>>", 640, 560);
    botonRectangular(640, 560,130,30,0);
    
    }
    //Pantalla 10: elegir si pedir refuerzos o ir mas rapido
    if (pantalla == 10) {
    tint(255, 255);
    background(255);
    image(imagenes[8], -40,-30);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Batman va a perderlo de vista, hay que hacer algo.", 30, 400);
    
    strokeWeight(2);
    fill(0,0,0,0);
    stroke(255);
    rect( 100, 505, 200, 65);
    fill(255);
    text("Llamar a Robin", 130, 523);
    botonRectangular(100, 505, 200, 65,0);
   
    fill(0,0,0,0);
    stroke(255);
    rect(400, 505, 250, 65);
    fill(255);
    text("Aumentar la velocidad", 420, 523);
    botonRectangular(400, 505, 250, 65,1);
    
    }
    //Pantalla 11: llamar a robin
    if (pantalla == 11) {
    tint(255, 255);
    background(255);
    image(imagenes [9], -30,0);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Robin intercepta al Joker y junto a Batman", 30, 400);
    text("se enfrenta a el y sus ayudantes.", 30, 450);
    text("CONTINUAR>>", 650, 560);
    botonRectangular(650, 560,130,30,0);
    
    }
    //Pantalla 12: batman aumenta la velocidad
    if (pantalla == 12) {
    tint(255, 255);
    background(255);
    image(imagenes [10], -30,0);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Batman casi atropella a un peaton.", 30, 400);
    text("Eso hizo que pierda el control de la moto y", 30, 450);
    text("pierda de vista al Joker.", 30, 500); 
    text("CONTINUAR>>", 650, 560);
    botonRectangular(650, 560,130,30,0);
    
    }
    //Pantalla 13: Batman y Robin pelean con el Joker
    if (pantalla == 13) {
    tint(255, 255);
    background(255);
    image(imagenes [11],0,0);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("Los superheroes de Gotham logran vencerlos.", 30, 400); 
    text("El joker y sus secuaces son llevado por ambos al departamento de policia.", 30, 450);
    text("Alli los esta esperando Jim Gordon para encerrar a los ladrones.", 30, 500);
    text("CONTINUAR>>", 650, 560);
    botonRectangular(650, 560,130,30,0);
    
    }
    //Pantalla 14: joker prision
    if (pantalla == 14) {
    tint(255, 255);
    background(255);
    image(imagenes [12],0,0);
    fill(0);
    stroke(0);
    rect(0, 355, 800, 600);
    fill(255);
    text("El Joker es encarcelado.", 30, 400);
    text("<<FIN>>", 700, 560);
    botonRectangular(700, 560,60,50,0);
    }
    
    //Pantalla de creditos
    if (pantalla == 15) {
    tint(100,100);
    background(0);
    image(imagenes[13],-300, -100);
    fill(255);
    textSize(65);
    text("BATMAN",300,150);
    textSize(50);
    text("Dirigido por: Mauro Scaffidi", 160, 250);
    text("Escrito por: Mauro Scaffidi", 160, 350);
    text("<<MENU", 30, 530);
    botonRectangular(30, 530,130,40,0);
  }
 }
