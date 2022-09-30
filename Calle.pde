class Calle{
 Auto auto = new Auto();
 Semaforo semaforo = new Semaforo();
 
 Calle(){
 }
 
 void draw(){
   semaforo.dibujarSemaforo();
  auto.dibujarAuto();
  auto.moverAuto();
 
  
   
 }
 void keyPressed(){
   semaforo.keyPressed();
 }
 
 
 
 
}
