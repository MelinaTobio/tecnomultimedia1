Trazos trazos;
PImage  t[];
int cantidad = 10;

void setup(){
 size(700,800); 
  background(255);
  trazos = new Trazos();
   t = new PImage[cantidad];
  for(int i=0 ; i<cantidad ; i++){
    String nombre = "Trazo" +nf(i,2)+".png";
    t[i] = loadImage( nombre );
  }
  }

void draw(){
   int cual = int(random(cantidad));
   float x = random(width - 150);
   float y = random (height - 70);
   image(t[cual],x,y,80,80);
   trazos.dibujar();
   trazos.actualizar();
}
