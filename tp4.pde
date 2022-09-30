//Melina Tobio Martinez 91333/1
//https://youtu.be/-dWuIU5LC7c
Calle calle;
Patito patito;
void setup(){
  size(600,600);
  calle = new Calle();
  patito = new Patito();
}
void draw(){
  background(#4D9FF5);
  calle.draw();
  patito.dibujarPatito();
 
}
void keyPressed(){
  calle.keyPressed();
  
}
