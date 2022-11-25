class Tiempo{
 float tiempo;
  Tiempo(float set){
    
   tiempo = set;
  }
  float getTiempo(){
  return(tiempo);
  }
  void establecerTiempo(float e){
    tiempo = e;
}
void contador(){
 tiempo += 1/frameRate; 
    
  } 
}
