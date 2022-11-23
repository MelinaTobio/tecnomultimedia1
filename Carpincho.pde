class Carpincho{
  PImage carpincho;
  
  Carpincho(){
    carpincho = loadImage("carpincho.png");
    
    
  }
  
  void dibujarCap(){
    image(carpincho,mouseX,500);
    
  }
  
  
  
  
}
