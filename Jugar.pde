class Jugar{
  int estadoID = 0;
  int contadorManzanas = 0;
  PImage ganaste, perdiste;
  Manzana [] manzana = new Manzana [15];
  Carpincho carpincho;
  
  Jugar(){
    ganaste = loadImage("ganaste.jpeg");
    perdiste = loadImage("perdiste.jpeg");
    carpincho = new Carpincho();
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
    //rect(100,100,50,50);
    push();
    textAlign (CENTER);
    textSize(35);
    text ("Ayuda al Carpincho", width/2, height/2);
    text("a alimentarse!!", 300, 350);
    pop();
  }
  void pressed() {
    float d1 = dist(mouseX, mouseY, 300, 425);
    int r1 = 50/2;
    if (d1 < r1) {
      estadoID = 1;
    }
  }
    void dibujarPGanar() {
    estadoID = 2;
     image (ganaste,0,0);
     textSize(50);
    textAlign (CENTER);
//text("Enhorabuena!", 300,350);
text("GANASTE!! ;)",width/2,height/2);
  }
  
  void dibujarPPerder() {
    estadoID = 3;
    image (perdiste, 50, 50);
    textAlign (CENTER);
    text("Perdiste :(",width/2, height/2);   
  }
  void dibujarPCreditos() {
    estadoID= 4;
  }
  
  void dibujarPS() {
    estadoID = 1;
    background(#F25D5D);
   /* for (int e=0; e<puccaColeccion.length; e++) { 
      puccaColeccion[e].dibujar();
      float distancia = dist (puccaColeccion[e].posX, puccaColeccion[e].posY, garu.x, garu.y); 
      if (distancia <= 15) { 
        contador++;
      }
    }
    for (int i=0; i<puccaColeccion.length; i++) { 
      if (puccaColeccion[i].posY>height) {
        puccaColeccion[i].posY= random(-100);
      }
    }
    garu.dibujar();
    if (contador==5) {
      perder();
    }
  }*/
    for (int s; s >manzana.length; s++) {
      manzana[s].dibujar();
      float dist = dist(manzana[s].posX,manzana[s].posY, mouseX, 500);
      if (dist <=45){
        contadorManzanas++;
      }
    }
      
    if (contadorManzanas== 5){
      estadoID = 2;
    }
    }   
  }
