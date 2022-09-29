/*
 MAGALLANES DIAZ, Lara Jazmín
 TP4    Comisión 1
 https://youtu.be/qPzjRHZ9tqY
 */

import processing.sound.*;

Main p;
SoundFile sonido;
//Click press;

void setup() {
  size (600, 450);
  p = new Main();
  sonido= new SoundFile(this, "Domestic_Cat_Single_Meow(MP3_128K)[1].mp3");
 // press = new Click(width/2,height/2,30,25);
 
}

void draw() {
  background (178, 139, 81);
  p.dibujar();
}
void mousePressed() {
  if (mouseX>(width/2)-30 && mouseX<(width/2)+30 && mouseY>(height/2)-25 && mouseY<(height/2)+25) {
    sonido.play();
  }
}
