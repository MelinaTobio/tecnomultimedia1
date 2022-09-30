class Semaforo{
  float posX, posY, tamX, tamY;
 Semaforo(){
   posX = 520;
   posY = 140;
   tamX = 30;
   tamY = 30; 
 }
  void dibujarSemaforo(){
  fill(0);
  rect(500,100,40,80);
  fill(180,112,47);
  rect(0,200,600,600);
  fill(#656571);
  rect(0,height/2,600,80);
  rect(540,135,30,10);
  rect(560,145,10,155);
  fill(255,0,0);
 ellipse(posX, posY,tamX,tamY);

  
}
void keyPressed(){
  fill (0,255,0);
  ellipse (posX, posY,tamX,tamY);
  }
}
