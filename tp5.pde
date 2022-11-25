/*
 MAGALLANES DIAZ, Lara Jazmín
 TP5    Comisión 1
 
 link: 
 https://youtu.be/8HZRP08w_do
 
   PD: En el video digo que no estoy conforme con las colisiones del
   laberinto, lo que no significa que no esté conforme con el trabajo,
   considero que a pesar de eso logré lo que quería hacer y estoy feliz
   con el resultado :)
 */

import processing.sound.*;

SoundFile musica;
Principal p;


void setup() {
  size (600, 450);
  p = new Principal();
  musica= new SoundFile(this, "musica.mp3");
  musica.loop();
}

void draw() {
  p.dibujar();
  p.update();
  p.pantallas();
   
}
void keyPressed() {
  p.mov(keyCode);
  p.reiniciarPant();
}
void mousePressed(){
  p.pasarPant();
}
