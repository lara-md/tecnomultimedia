void casita( int px, int py, int tam) {

  fill(227, 91, 46);
  triangle(px-10, py, px+tam/2, py-tam/2, px+tam+10, py);
  fill(248, 255, 203);
  rect(px, py, tam, tam);
}
  void arbustos(float px, float py, float tam) {

    circle(px, py+30, tam);
    circle(px+480, py+30, tam);
    circle(px+80, py+20, tam+20);
    circle(px+160, py+20, tam+20);
    circle(px+240, py+20, tam+20);
    circle(px+320, py+20, tam+20);
    circle(px+400, py+20, tam+20);
  }
  
  boolean sobreAlgo(int px, int py, int ancho, int alto) {
  return mouseX>px&&mouseX<px+ancho && mouseY>py && mouseY<py+alto;
}
