
class Fan {
  float x, y, diam;
  PImage fanimg;
  
  Fan(int x, int y, int diam) {
   
    this.x = x;
    this.y= y;
    this.diam= diam; //20
     fanimg= loadImage ("fanimg.png");
  }
  void displayFan() {
    //imageMode(CENTER);
    image(fanimg,x, y, diam, diam);
  }
  void limite(){
    //limite pantalla
    y= constrain(y, 0, height-diam);
    x= constrain(x, 0, width-diam);
    
  }
  void volver(){
   x=width/2;
   y=height-50;
  }

  void mover(int tecla) {
    if (tecla==RIGHT) {
      x += 5;
    }
    if (tecla==LEFT) {
      x -=5;
    }
    if (tecla==UP) {
      y-=5;
    }
    if (tecla==DOWN) {
      y +=5;
    }
  }
  
  void reboteArriba() {
    y += 5;
  }
}
