class Manzana{
PImage manzana;
float posX, posY, velocidad;
Manzana(float x, float y){
  manzana = loadImage("manzana-0.png");
  posX = x;
  posY = y;
  velocidad = random(1,3);
  
}
  void dibujar(){
     push();
    fill(200, 0, 0 ,50);
    circle(posX+20,posY+20,30);
    pop();
   image(manzana,posX,posY); 
   manzana.resize(50,50);
   actualizar();
   
    
  }
  void mover() {
    posY+= velocidad;
    velocidad = random(1,3);
 
  }
  void actualizar() {
    mover();
    if (posY > height) {
      posY = random(0-height);
      posX = random(0,width);
    
  }
}
}
