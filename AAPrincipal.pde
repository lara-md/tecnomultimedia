
class Principal {

  int estado, cant, tiempo;
  float x, y;
  String est;
  PImage fondo;

  Auto[] autos;
  Fan fan;
  Laberinto[] lab;
  Pantallas pant;

  Principal() {
    est = "inicio";
    tiempo= 0;
    estado= 0;
    cant= 4;
    pant= new Pantallas();
    autos = new Auto [cant];
    fan = new Fan(width/2, (height-50), 20);
    lab= new Laberinto[7];

    fondo= loadImage ("fondo.png");

    //autos
    for (int i= 0; i < cant; i++) {
      autos[i]= new Auto(-100, 250+(40*i), 50, 25);
    }
    for (int i= 0; i < lab.length; i++) {
      lab[i]= new Laberinto();
    }
  }

  //estados
  void pantallas() {
    textAlign(CENTER);
    fill(255);
    if ( est.equals("inicio") ) {
      pant.inicio();
    } else if ( est.equals("instrucciones") ) {
      pant.instrucciones();
      fan.volver();
    } else if ( est.equals("jugando") ) {
      p.dibujar();
      p.tiempo();
      p.correrT();
    } else if (est.equals("perderChoque") ) {
      pant.perderChoque();
    } else if (est.equals("perderTiempo") ) {
      pant.perderTiempo();
    } else if (est.equals("ganar")) {
      pant.ganar();
    } else if (est.equals("creditos")) {
      pant.creditos();
    }
  }

  void pasarPant() {

    if ( est.equals("inicio") && mousePressed ) {
      est = "instrucciones";
    } else if ( est.equals("instrucciones") && mousePressed ) {
      est = "jugando";
    }
  }
  void reiniciarPant() {
    if (est.equals("perderChoque")  &&  key == 'r' || est.equals("perderTiempo")  &&  key == 'r' || est.equals("ganar") &&  key == 'r' || est.equals("creditos")  &&  key == 'r' ) {
      est = "instrucciones";
    }
    if (est.equals("ganar") &&  key == 'c' ) {
      est = "creditos";
    }
  }

  void dibujar() {

    image(fondo, 0, 0);

    //autos
    for (int i= 0; i < autos.length; i++) {
      autos[i].display();
      autos[i].mover();

      //choque
      if (choque(fan.x, fan.y, fan.diam, autos[i].ax, autos[i].ay, autos[i].ancho, autos[i].alto)) {
        
        
        if (fan.x+fan.diam>autos[i].ax && fan.x<autos[i].ax+autos[i].ancho && fan.y+fan.diam>autos[i].ay) {
          est = "perderChoque";
          //fan.reboteIzq();
        }
        if (fan.x<autos[i].ax+autos[i].ancho && fan.x>autos[i].ax && fan.y+fan.diam>autos[i].ay) {
          est = "perderChoque";
          //fan.reboteIzq();
        }
      }
    }

    fan.displayFan();
    fan.limite();

    //laberinto de fans
    for (int i=0; i<lab.length; i+=2) {
      lab[i].laberinto(0, i);
    }
    if (fan.x>25 && fan.x<=width && fan.y>=50 && fan.y<=75) {
      fan.reboteArriba();
    }
    if (fan.x>25 && fan.x<=width && fan.y>=150 && fan.y<=175) {
      fan.reboteArriba();
    }
    if (fan.x>-width && fan.x<=width-50 && fan.y>=100 && fan.y<=125) {
      fan.reboteArriba();
    }
    if (fan.x>-width && fan.x<=width-50 && fan.y>=200 && fan.y<=225) {
      fan.reboteArriba();
    }
  }

  //choque
  boolean choque(float x, float y, float diam, float ax, float ay, float ancho, float alto) {
    if (x+diam>ax && x <x+ancho && y+diam*2>y && y<ay+alto) {
      return true;
    } else {
      return false;
    }
  }

  void update() {
    for (int i= 0; i < cant; i++) {
      autos[i].reciclar();
    }
  }
  void mov(int tecla) {
    fan.mover(tecla);
  }
  void tiempo() {
    fill(50, 25, 100);
    push();
    ellipseMode(CENTER);
    ellipse(20, height-20, 30, 30);
    pop();
    textAlign(CENTER, CENTER);
    fill(255);
    text(""+tiempo, 20, height-20);
  }

  void correrT() {
    if (frameCount%60==0) {
      tiempo+=1;
    }

    if (est.equals ("perderChoque")) {
      tiempo= 0;
    }
    if (tiempo==20) {
      est= "perderTiempo";
      tiempo= 0;
    }
    if ( est.equals("jugando") && dist( fan.x, fan.y, 550, 25) <= 40 ) {
      est = "ganar";
      tiempo= 0;
    }
  }
}
