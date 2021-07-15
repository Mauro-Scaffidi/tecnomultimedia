//https://youtu.be/-ds4bo_5lnk

float mapeado;

void setup(){
  size(600, 600);
  background(10);
  stroke(0, 255, 0);
}

void draw(){
  
  for( int valor= 0; valor< 600; valor +=16){
    
    mapeado= map(valor ,0, 600, 0, 12);
    
    if(valor <= ultposicion){
     strokeWeight(mapeado);
   } else { 
     strokeWeight(1);
}
     
    line(valor, 0, valor, 600);
    
  }

}

int ultposicion;
void mouseDragged(){
  
  ultposicion = mouseX;
}

void keyPressed(){
  
 if(key == 'r'){
   background(10);
   stroke(0, 255, 0);
   ultposicion=0;
 }
 if(key == ' '){
   mapeado= map(0, 0, 600, 0, 255);
   stroke(0, random(150, 255),random(150,255));
   
   
 } 
}
