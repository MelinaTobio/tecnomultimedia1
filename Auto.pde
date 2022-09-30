class Auto{
float pX, pY;
float velX;
PImage auto;
Auto(){
 pX = 10;
 pY = 300;
  velX =  2;
  auto = loadImage ("auto.png");
}
void moverAuto () {
if (pX > width + 50){
   pX = -50;
  }
  //movimiento
  pX += velX ;
}
void dibujarAuto(){
  noStroke();
 image (auto, pX, pY, 90,50);
}

}
