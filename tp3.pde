String estado;
PImage patito;
PFont fuenteNueva;
float[] vel = new float[8];  //velocidad
float[] x =  new float[8];   //posicion

void setup(){
  size(600,600);
  estado = "inicio";
  patito= loadImage("patito.jpg");
  fuenteNueva= loadFont("AgencyFB.vlw");
  textSize(15);
  
   for( int i = 0 ; i < vel.length ; i++ ){
     vel[0]= 2;
   vel[1]= 5;
   vel[2]= 3;
   vel[3]= 4;
   vel[4]= 1;
   vel[6]= 6;
   vel[5]=1;
   vel[7]= random(2,8); 
    
  
  }
}

void draw(){
  if(estado.equals("inicio")){
    background(17,129,183);
    textFont(fuenteNueva);
    text("Presione espacio para continuar", 50, 350);
  }else if (estado.equals("instrucciones")){
  background(17,129,183);
  image(patito,260,280,80,80);
  textFont(fuenteNueva);
  text("Ayuda al patito", 50,200);
  text("a esquivar los troncos!!", 50,250);
  
 pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
      fill( 255);
    } else {
      fill( 0 );
    }
    ellipse( width/2, height/2+100, 50, 50 );
    popStyle();
} else if ( estado.equals("jugando") ) {
    background( 17,129,183 );
    
   for( int n = 0 ; n < 8 ; n++ ){
    //actualizo posición x sumando velocidad
    x[n] += vel[n];
    //dibujo los cinco troncos
    fill(77,59,11);
     rect( n*70 +80,x[n] , 50,100 );
   }
    
    image(patito,mouseX, 550,50,50);  
}
}
void keyPressed() {
  //evento que cambia de inicio a instrucciones
  if ( estado.equals("inicio") && key == ' ' ) {
   estado= "instrucciones";
  }
  

}
void mousePressed() {
  //evento que cambia de instrucciones a jugando
  if ( estado.equals("instrucciones") && dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
    estado = "jugando";
  }

}
void reiniciar(){
  estado="inicio";
}
