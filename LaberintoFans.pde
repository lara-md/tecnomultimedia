
class FanInd {

  int fx, fy;
  int tam= 25;
  PImage fanimg2;

  FanInd() {
    ellipseMode(LEFT);
    fanimg2= loadImage ("fanimg2.png");
  }
  void display(int x, int y) {
    fx = x;
    fy= y;
    noStroke();

    //ellipse(fx*tam, 50+(fy*tam), tam, tam);
    push();
    tint(200, 180, 250);
    image(fanimg2, fx*tam, 50+(fy*tam), tam, tam);
    pop();
  }
}
class Laberinto {
  FanInd[] fl;
  float lx, ly;

  Laberinto() {
    fl= new FanInd[23];
    for (int i= 0; i < fl.length; i++) {
      fl[i]= new FanInd();
    }
  }
  void laberinto(int x, int y) {
    lx = x;
    ly = y;
    for (int i=0; x<fl.length; x++) {
      if (y%4==0) {
        
        fl[i].display(x+1, y);
       
      } else {
       
        fl[i].display(x, y);
      }
    }
  }
}
