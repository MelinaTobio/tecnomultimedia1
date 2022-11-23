class Manzana{
PImage manzana;
float posX, posY;
Manzana(float x, float y){
  manzana = loadImage("manzana-0.png");
  posX = x;
  posY = y;
  
  
}
  void dibujar(){
   image(manzana,posX,posY); 
   posY++;
    
  }
  
  
}
