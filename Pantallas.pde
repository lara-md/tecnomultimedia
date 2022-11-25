
class Pantallas {

  PImage concierto, ataud, monumental, inicio;
  PFont Verdana;
  String [] texto = {"''¿POR QUÉ LA FAN CRUZO LA CALLE?''", "¡GANASTE!", "llegaste al concierto :D", "¡PERDISTE!", "cerraron las puertas D:", "te chocó un auto en la Panamericana", "[ presione 'r' para reiniciar ]", "[ click para continuar]", "[ presione 'c' para ver los créditos ]"};
  float posy;

  Pantallas() {
    Verdana= loadFont ("Verdana.vlw");
    textFont (Verdana);
    concierto= loadImage("concierto.jpg");
    ataud= loadImage("ataud.jpg");
    monumental= loadImage("monumental.jpg");
    inicio= loadImage("inicio.png");
    posy=height;
  }
  void inicio() {
    background(50, 25, 100);
    image(inicio,20,10,500,350);
    textSize(20);
    text(texto[0], width/2, 350 );
    textSize(10);
    text(texto[7], width/2, 375 );
  }
  void instrucciones() {
    background(50, 25, 100);
    textAlign(CENTER);
    textSize(20);
    text("¡Tu banda favorita va a dar un concierto\nen tu país! Pero estas llegando\ntarde y tenés que cruzar la calle \n¡Mucho cuidado con los autos!,\nuna vez que llegues al otro lado \ntendrás que escabullirte entre las otras \nfans, pero rápido, con cuidado de no acercarse \ndemasiado a ellas y te arrastren al inicio de la \nfila y antes de que cierren las puertas, \ntenés 30 segundos.\n¡Llegá san@ y salv@ al Monumental para ganar!",
      width/2, height/4-40);
    textSize(10);
    text(texto[7], width/2, 375 );
  }
  void perderChoque() {
    push();
    tint(155, 105, 255);
    image(ataud, 0, 0,width,height);
    textAlign(CENTER,CENTER);
    textSize(30);
    text(texto[3], width/2, height/2 );
    textSize(15);
    text(texto[5], width/2, height/2+50 );
    textSize(10);
    text(texto[6], width/2, 350 );
    pop();
  }
  void perderTiempo() {
    push();
    tint(155, 105, 255);
    image(monumental, 0,-75,width,525);
    textAlign(CENTER,CENTER);
    textSize(30);
    text(texto[3], width/2, height/2 );
    textSize(15);
    text(texto[4], width/2, height/2+50 );
    textSize(10);
    text(texto[6], width/2, 350 );
    pop();
  }
  void ganar() {
    push();
    tint(155, 105, 255);
    image(concierto, 0, 0,width,height);
    textAlign(CENTER,CENTER);
    textSize(30);
    text(texto[1], width/2, height/2 );
    textSize(15);
    text(texto[2], width/2, height/2+50 );
    textSize(10);
    text(texto[6], width/2, 350 );
    text(texto[8], width/2, 375 );
    pop();
  }
  void creditos(){
  background(0);
   text("Reparto \n \n Fan interpretada por \n Fan \n \n Fans interpretadas por \n Fans \n \n Dirección \nLara \n \nIdea y ejecución \nLara \n \nDiseño e ilustración \nLara \nFlaticon \n \n Fotografía \n Google \n \n Programación \nLara \n \nMúsica \nBTS \n \nAgradecimientos a \nLara \n Processing \n \nEn memoria de \nLara \n \n[ presione 'r' para reiniciar ]",
      width/2, posy);
      posy-=0.75;
      if ( posy < 0-height ) {
      posy = height;
  }
  }
}
