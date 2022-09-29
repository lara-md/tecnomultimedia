
class Gato {
  int px, py;
  Sombra s;

  PImage [] gati;
  int mover;
  boolean seMueve;

  Gato() {
    gati = new PImage [3];
    for (int i=0; i<3; i++) {
      gati[i] = loadImage ("gato"+i+".png");
    }
    px = width/2;
    py = width/3;
    seMueve= true;
    s= new Sombra();
  }

  void caminar() {
    s.dibujarSombra(px, py+20);
    push();
    imageMode(CENTER);
    image(gati[mover], px, py, 62, 50);
    pop();

    if (seMueve) {
      if (frameCount%10==0) {
        mover ++;
        mover= mover%3;
      }
    }
  }
}
