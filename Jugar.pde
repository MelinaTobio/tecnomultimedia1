class Jugar{
  int estadoID = 0;
  int contadorManzanas = 0;
  PImage ganaste, perdiste;
  Manzana [] manzana = new Manzana [15];
  Carpincho carpincho;
  Tiempo tiempo;
  Jugar(){
    ganaste = loadImage("ganaste.jpeg");
    perdiste = loadImage("perdiste.jpeg");
    carpincho = new Carpincho();
    tiempo = new Tiempo(0);
     for (int i = 0; i < manzana.length; i++) {
      manzana[i] = new Manzana (random(0, 600), random(-100, 0));
       
  }
  
}

void dibujar(){
  println(contadorManzanas);
  if (estadoID == 0) {
      dibujarPP();
    } else if (estadoID == 1) {
      dibujarPS();
    } else if (estadoID == 2) {
      dibujarPGanar();
    } else if (estadoID == 3) {
      dibujarPPerder();
    } else if (estadoID == 4) {
      dibujarPCreditos();
    }
    }
  void dibujarPP() {
    estadoID = 0;
    push();
    background(91, 158, 209); 
  circle (300,425,50);
  fill(0);
  text("Iniciar",285,430);
  pop();
    push();
    textAlign (CENTER);
    fill(0);
    textSize(40);
    text ("Ayuda al Carpincho", width/2, 200);
    text("a alimentarse!!", 300, 250);
    fill(255);
    textSize(25);
    text("Tienes 10 segundos para",width/2,300);
    text("recolectar cinco manzanas",width/2,350);
    text(" sino pierdes!!",width/2,390);
    pop();
     push();
    fill(0,0,0,0);
    strokeWeight(2);
    rect(50,50,500,500);
    pop();
  }
  void pressed() {
    float d1 = dist(mouseX, mouseY, 300, 425);
    int r1 = 50/2;
    if (d1 < r1) {
      estadoID = 1;
    }
  }
  void keyPressed(){
     if (estadoID == 2 || estadoID == 3) {
      if (key == 'c' || keyCode == 'c') {
        dibujarPCreditos();
      }
     }
     if (estadoID == 2 || estadoID == 3 || estadoID == 4 ) {
      if (key == ' ') {
        estadoID = 1;
        reiniciar();
      }
     }
  }
    void dibujarPGanar() {
    estadoID = 2;
     image (ganaste,0,0);
     textSize(50);
    textAlign (CENTER);
    fill(255);
text("GANASTE!! ;)",width/2,height/2);
fill(0);
textSize(25);
text("Aprieta c para ver los creditos",width/2,500);
text("Aprieta espacio para reiniciar",width/2,550);
  }
  
  void dibujarPPerder() {
    estadoID = 3;
    background(0);
    image (perdiste, 100, 100);
    textSize(50);
    textAlign (CENTER);
    text("Perdiste :(",width/2, 500);  
      fill(0);
     textSize(25);
text("Aprieta c para ver los creditos",width/2,500);
text("Aprieta espacio para reiniciar",width/2,550);
  }
  void dibujarPCreditos() {
    estadoID= 4;
    background(#FF1F9B);
    text("Melina Tobio Martinez",width/2,100 );
    text("Legajo:91333/1",width/2,200);
    text("Comision 2",width/2,300);
    text("Prof.: Matias Jauregui Lorda",width/2,400);
    text("Tobias Albirosa",width/2,450);
    text("Aprieta espacio para reiniciar",width/2,550);
  }
  
  void dibujarPS() {
      estadoID = 1;
     background(#F25D5D);
     tiempo.contador();
     text(tiempo.getTiempo(),20,50);
     dibujarArreglo(); 
     carpincho.dibujarCap();
     fill(0);
     textSize(20);
    text("Puntaje:  "+contadorManzanas,450,50);
      println(contadorManzanas); 
    push();
    fill(200, 0, 0 ,50);
    pop();
  }

   void dibujarArreglo() {
     
       float posXC = mouseX+60; //area del jugador = posicion del mouse+60 para que coincida con el carpincho
       float Radius = 30*2; //variable que define el radio
       circle(posXC,550,Radius); //objeto
       
    for (int i = 0; i <manzana.length; i++) { //arreglo para trabajar con las manzanas
      manzana[i].dibujar();
      if ( //condicion para que se cumpla la colision. DETECTA la colision
      manzana[i].posX >= posXC-30 &&  manzana[i].posX <= posXC+30 && manzana[i].posY >= 540 && 500 <= 500
      ) //
      {
       contadorManzanas++;
       manzana[i].posY= random(0); //segun que manzana toca se le da una posicion aleatoria
     }
    }
    
    if (contadorManzanas == 5){
     estadoID = 2;
    } 
  }
void reiniciar(){
  for (int m = 0; m < manzana.length; m++) {
      manzana[m] = new Manzana (random(0, 600), random(-100, 0));
    }
    estadoID = 0;
   contadorManzanas = 0;
     tiempo = new Tiempo(0); 
   }


}
