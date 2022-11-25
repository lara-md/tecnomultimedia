
class Auto {
  float ax, ay, ancho, alto, vel;
  PImage coche;

  Auto(float ax, float ay, float ancho, float alto) {
    //x= -100;
    coche= loadImage ("coche.png");
    this.ax= ax;
    this.ay= ay;
    this.ancho = ancho; //50
    this.alto = alto; //25
    vel=random (2, 4);
    fill(255, 0, 0);

    rect(ax, ay, ancho, alto);
  }
  void display() {

    fill(255, 0, 0);
    //rect(ax, ay,ancho, alto);
    push();
    tint(100, 50, 200);
    image(coche,ax, ay,ancho, alto);
    pop();
  }
  void mover () {
    ax+=vel;
  }
  void reciclar() {
    if ( ax > width ) {
      ax = 0;
    }
  }
}
