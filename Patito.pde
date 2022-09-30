class Patito{
 PImage patito;
 
Patito(){
  patito = loadImage("patito.png");
}
  
 void dibujarPatito(){
 image(patito,250, mouseY,80,80); 
 
} 
}
