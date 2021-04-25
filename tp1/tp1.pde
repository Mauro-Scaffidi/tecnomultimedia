void setup(){
  size(600, 600);
  background(2);
  
}
void draw(){
 strokeWeight(1);
 smooth();

  //colores terciarios
  //fucsia
  strokeWeight(2);
  fill(#F022C0);
  triangle(170, 59, 170, 300, 350, 168);
  
  //violeta
  strokeWeight(2);
  fill(#8822F0);
  triangle(60, 308, 300, 135, 300, 460);
  
  //azur o ceruleo
  strokeWeight(2);
  fill(#229FF0);
  triangle(170, 545, 400, 400, 170, 400);
  
  
  //verde cian
  strokeWeight(2);
  fill(#09E38A);
  triangle(430, 545, 430, 350, 200, 400);
  
  //lima
  strokeWeight(2);
  fill(#98EA1F);
  triangle(545, 308, 300, 145, 300, 460);
  
  //naranja
  strokeWeight(2);
  fill(#E58620);
  triangle(430, 60, 300, 135, 430, 350);
 
 
  //centro del circulo cromatico, cuadrilatero
  fill(255);
  rect(162, 160,  277, 290);
  
  //triangulos de los colores: colores primarios(rojo, azul y verde)
  //rojo
  strokeWeight(2);
  fill(190, 0, 0);
  triangle( 300, 10, 230, 160, 370, 160);
  //azul
  fill(0, 0 , 190);
  triangle( 162, 308, 96, 450, 230, 450);
  //verde
  fill(#1CC430);
  triangle( 439, 308, 370, 450, 504, 450);
  
  //colores secundarios: cian, magenta, amarillo)
  //cian
  strokeWeight(2);
  fill(31, 216, 212);
  triangle ( 300, 595, 230, 450, 370, 450); 
  //magenta
  fill(#D331D1);
  triangle(90, 160, 230, 160, 162, 308);
  //amarillo
  fill(#DCE014);
  triangle(370, 160, 512, 160, 439, 308);
  
  fill(200);
  text("CIAN", 330, 550);
  text("VERDE CIAN", 435, 510);
  text("VERDE", 500, 430);
  text("LIMA", 510, 345);
  text("AMARILLO", 485, 230);
  text("NARANJA", 435, 100);
 text("ROJO", 325,50);
 text("FUCSIA", 125, 100);
 text("MAGENTA", 60, 230);
 text("VIOLETA", 50, 345);
 text("AZUL", 70, 430);
 text("AZUR O CERULEO", 60, 510);
  
  
}
  
