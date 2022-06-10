//Melina Tobio Martinez. Comision 2. LEGAJO: 91333/1
// Video de presentacion del tp2 https://youtu.be/gxaOhWG5Xh4
int tam;
int cant = 40;


void setup() {
  size(600, 600);
  tam= width/cant;
}

void draw() {
  background(0, 0, 0);
  tam=width/cant;
  for (int i=0; i<cant; i++) {
    for ( int j=0; j<cant; j++) {
      if ((i+j) %2==0) {
        fill(0);
      } else {
        fill(random(0, 255), random(0, 250), random(0, 250));
      }

      rect(i*tam, j*tam, tam, tam);
    }
  }
  fill(255);
  translate(mouseX, mouseY);
  rotate(radians(frameCount));
  rectMode(CENTER);
  fill(0);
  rect(0, 0, 100, 100);
}

void mousePressed() {
  fill(255);
  rect(0, 0, 100, 100);
  cant--;
}
void keyPressed() {
  resetear();
}
