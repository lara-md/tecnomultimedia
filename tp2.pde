
/*
      MAGALLANES DIAZ, Lara Jazmín
 Comisión 1
 
 TP2: Ilusión optica de lineas paralelas
 
 link del video: https://youtu.be/VDA7u-kYI6k
 (al principio se ve trabado, disculpas por eso)
 */

//VARIABLES
float pos;
float tuki;
int cant;
int tam;
boolean seMueve;

PFont LucidaConsole;
float marco;
String reset;

void setup() {
  size(500, 500);

  cant=13;
  tam = width/cant;
  seMueve = true;
  LucidaConsole = loadFont("LucidaConsole.vlw");
  tuki = random (0, 100);
  reset = "PRESS ' r ' TO RESET";
  marco = textWidth(reset);
}
void draw() {

  background(255);

  //FONDO
  for (float x=-7; x<cant; x++) {
    for (float y=-7; y<cant; y+=2) {

      if ((x+y)%2==0) {
        fill(255);
      } else {
        fill(0);
      }
      fondo(pos+x*tam, y*tam, tam);

      if (seMueve) {
        pos+=0.008;
      } else {
        pos-=0.008;
      }

      if (pos>width/2 || pos<-tam/2) {
        seMueve = !seMueve;
      }
    }
  }

  //CUADRADOS
  for (float x=0; x<cant; x++) {
    for (int y=0; y<cant; y+=2) {

      if ((x+y)%2==0) {
        fill(255);
      } else {
        fill(0);
      }

      noStroke();
      fondo(x*tam, y*tam, tam);
    }
  }
  //LINEAS
  lineas();
  //TEXTO
  fill(tuki, 200, 200);

  //rectMode(CENTER);
  noStroke();
  rect(193, 465, marco+10, 25, 10);

  textAlign(CENTER);
  fill(0);
  text (reset, width/2, 480);
}


//FUNCIONES
void fondo(float px, float py, float tam) {
  noStroke();
  rect(px, py, tam, tam);
}

void lineas() {
  for (int i=0; i<height; i+=tam) {
    stroke(tuki, 0, 255);
    strokeWeight(1.5);
    line(0, i, 600, i);
  }
}
//EVENTOS
  void mousePressed() {
  cant++;
}

  void keyPressed() {
    if (key=='r')
      cant=13;
      tuki = random (100, 255);
}  
