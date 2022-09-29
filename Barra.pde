
class Barra {
  PImage barrita;
  int bx;

  Barra() {
    bx=-width/2;
    barrita= loadImage("barra.png");
  }
  void dibujarBarra () {

    image(barrita, bx, (height/2)+80);
    moverB();
    stroke(255);
    noFill();
    strokeWeight(4);
    rect(0, (height/2)+80, 600, 30);
  }
  void moverB() {
    bx = bx<0 ? bx : -width;
    bx ++;
  }
}
