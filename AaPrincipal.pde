
class Main {
  Gato personaje;
  Fondo estrellas;
  Barra cargando;
  //Click press;

  Main() {
    personaje = new Gato();
    estrellas = new Fondo();
    cargando = new Barra();
    //press = new Click(width/2,height/2,30,25);
  }
  void dibujar() {
    push();
    estrellas.dibujar();
    pop();
    personaje.caminar();
    cargando.dibujarBarra();
    cargando.moverB();
  }
 // void accionar(){}
}
