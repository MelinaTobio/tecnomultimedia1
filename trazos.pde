
class Trazos{
  PImage trazo00,trazo01,trazo02; 
 float x,y;
 float vel;
 float t = 20;
 color relleno;
  String estado;
  int cont;
  int limite;
  Trazos(){
    trazo00 = loadImage("Trazo00.png");
    trazo01 = loadImage("Trazo01.png");
    trazo02 = loadImage("Trazo02.png");
   x = random(width);
   y = random(height);
   vel = 4;
   relleno = color(random(255),random(255),random(255));
   estado = "azul";
   cont = 0;
  }
  void dibujar(){
    tint(0,0,255);
  image(trazo00,x,y,100,300);
  }
  void actualizar(){
   if(estado.equals("azul")){
     dibujar();
     if(cont>=30){
      estado = "rosa"; 
     }
   }else if(estado.equals("rosa")){
     dibujar();
     tint(#FF3697);
     image(trazo01,80,80,100,100);
      if(cont>=60){
      estado = "amarillo"; 
      limite = int(random(30,60));
      cont = 0;
     }
   }else if(estado.equals("amarillo")){
     dibujar();
     tint(#E9FF00);
     image(trazo02,300,300,100,100);
      if(cont>=limite){
      estado = "azul"; 
      cont = 0;
     }
   }
   cont ++;
  }
  void mover(){
    
    
  }
  
}
