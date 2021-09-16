//Aca se indica el flujo de pantallas
void botonRectangular(float x, float y, float tamX, float tamY, int ID) {
  if (mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY ) {

    if (click) {
      click = false;
      
      if (ID == 0 && pantalla == 0) { // Jugar
        actualizarPantallas(pantalla, true);
      } else if (ID == 1  && pantalla == 0) { // Creditos
        actualizarPantallas(pantalla, false);
      } else if (ID == 0 && pantalla == 1) { // Continuar a pantalla 2
        actualizarPantallas(pantalla, true);
      } else if (ID == 1  && pantalla == 1) {
        actualizarPantallas(pantalla, false);
      } else if (ID == 0 && pantalla == 2) { //opcion de la pantalla 2: Atrapar al joker
        actualizarPantallas(pantalla, true);
      } else if (ID == 1  && pantalla == 2) { // opcion de la pantalla 2: quedarse en la fiesta
        actualizarPantallas(pantalla, false);
      } else if (ID == 0 && pantalla == 3) {
        actualizarPantallas(pantalla, true);
      } else if (ID == 1 && pantalla == 3) {
        actualizarPantallas(pantalla, false);
      } else if (ID == 0 && pantalla == 5) {
        actualizarPantallas(pantalla, true);
      } else if (ID == 1 && pantalla == 5) {
        actualizarPantallas(pantalla, false);
      } else if (ID == 0 && pantalla == 6) {
        actualizarPantallas(pantalla, true);
      } else if (ID == 1 && pantalla == 6) {
        actualizarPantallas(pantalla, false);
      }else if (ID == 0 && pantalla == 7) {
        actualizarPantallas(pantalla, true);
      }else if (ID == 1 && pantalla == 7) {
        actualizarPantallas(pantalla, false);
      }else if (ID == 0 && pantalla == 9) {  
        actualizarPantallas(pantalla, true);
      } else if (ID == 1  && pantalla == 9) { 
        actualizarPantallas(pantalla, false);
      }else if (ID == 0 && pantalla == 10) {  
        actualizarPantallas(pantalla, true);
      } else if (ID == 1  && pantalla == 10) { 
        actualizarPantallas(pantalla, false);
      }else if (ID == 0 && pantalla == 11) {  
        actualizarPantallas(pantalla, true);
      }else if (ID == 0 && pantalla == 13) {  
        actualizarPantallas(pantalla, true);
      }else if (ID == 0 && pantalla == 14) {  
        actualizarPantallas(pantalla, true);
      }else if (ID == 0 && pantalla == 15) {  
        actualizarPantallas(pantalla, true);
      }else if (ID == 0 && pantalla == 4) {  
        actualizarPantallas(pantalla, true);
      }else if (ID == 0 && pantalla == 8) {  
        actualizarPantallas(pantalla, true);
      }else if (ID == 0 && pantalla == 12) {  
        actualizarPantallas(pantalla, true);
      } 
 }
}
    fill(0,0,0,0);
    noStroke();
    rect(x, y, tamX, tamY);
  }
