
class Fondo {
  int cant = 70;
  float tam = 5;
  Estrella star;

  Fondo() {
    star= new Estrella();
  }

  void dibujar() {
    for (float x=0; x<cant; x++) {
      for (int y=0; y<cant; y+=2) {
        star.dibujaStar(x*cant/2, y*cant/2);
        rotate(radians(frameCount/8));
      }
    }
  }
}

class Estrella {
  int tam= 12;
  float ex, ey, x, y;
  PImage star;

  Estrella() {

    star= loadImage("estrella.png");
  }

  void dibujaStar(float x, float y) {

    rotate(radians(45));
    this.ex = x;
    this.ey= y;
    image(star, x, y, tam, tam);
  }
}
