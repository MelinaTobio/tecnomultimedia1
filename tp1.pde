PImage spiderman1, spiderman2, spiderman3, spiderman4,spiderman5, sm;
PFont fuenteNueva, fuenteNueva2;
float x, y;
void setup(){ 
  
  size(700,600);
  spiderman1 = loadImage("spiderman1.jpg");
  spiderman2 = loadImage("spiderman2.jpg");
  spiderman3 = loadImage("spiderman3.jpg");
  spiderman4 = loadImage("spiderman4.jpg");
  spiderman5 = loadImage("spiderman5.jpg");
  sm = loadImage("sm.jpg");
  fuenteNueva = loadFont("Agency.vlw");
  fuenteNueva2 = loadFont("AgencyFB.vlw");
  textSize(40);
  x = 0;
  y = 400; 
}

void draw(){
  
  println (frameCount, frameCount/30);
  // pantalla 1
 image(spiderman1,300,300);
 imageMode( CENTER );
 image(sm, mouseX, mouseY, 45,45);
 fill(0);
 textFont(fuenteNueva);
 text(" a MARVEL STUDIOS production", x, y); 
 //movimiento derecha
 if( frameCount < 200 ){
  x++;
   
 }
 //pantalla 2
 if (259<frameCount && frameCount < 409){
  image(spiderman2,300,300); 
  textFont(fuenteNueva2);
  textSize(40);
  fill(37,0,255);
  text("starring",550,500);
  text("Tom Holland", 520, 550 );
  
 }
 //pantalla 3
 if(408 < frameCount && frameCount < 558){
   image(spiderman3,200,300);
   textFont(fuenteNueva2);
   textSize(40);
   fill(37,0,255);
   text("Zendaya",60,350);
 }
 //pantalla 4
  if(557 < frameCount && frameCount < 708){
   image(spiderman4,200,300);
   textFont(fuenteNueva2);
   textSize(40);
   fill(37,0,255);
   text("Jacob Batalon",60,350);
  }
  //pantalla 5
 if(707 < frameCount && frameCount < 858 ){
  image(spiderman5, 350,300);
  imageMode ( CENTER );
 }
}
