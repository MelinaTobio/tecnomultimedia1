//https://youtu.be/lnu4q3moygI
// MELINA TOBIO MARTINEZ
//91333/1
import ddf.minim.*;
Minim minim;
AudioPlayer player;
Jugar jugar;
void setup(){
  size(600,600);
  minim = new Minim(this);
  player = minim.loadFile("musicaJugando.mp3");
  player.loop();
  jugar = new Jugar(); 
}
void draw(){
  jugar.dibujar();
}
void mousePressed(){
  jugar.pressed(); 
}
void keyPressed(){
  jugar.keyPressed();
  
}
