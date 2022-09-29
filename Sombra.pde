
class Sombra {
  int sx, sy, x, y;
  Sombra() {
    ellipseMode(CENTER);
  }
  void dibujarSombra(int x, int y) {
    this.sx = x;
    this.sy= y;
    fill(0, 150);
    noStroke();
    ellipse(x, y, 80, 20);
  }
}
/*
class Click{
  int bx,by,ancho,alto;
  Click(int bx, int by, int ancho, int alto){
    this.bx= bx;
    this.by= by;
    this.ancho= ancho;
    this.alto= alto;
  }
  boolean clickeado(int bx, int by, int ancho, int alto){
   // return mouseX>(width/2)-30 && mouseX<(width/2)+30 && mouseY>(height/2)-25 && mouseY<(height/2)+25;
    return mouseX>bx-ancho && mouseX<bx+ancho && mouseY>by-alto && mouseY<by+alto;
  }
}*/
