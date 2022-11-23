Jugar jugar;
void setup(){
  size(600,600);
  jugar = new Jugar(); 
}
void draw(){
  jugar.dibujar();
}
void mousePressed(){
  jugar.pressed(); 
}
