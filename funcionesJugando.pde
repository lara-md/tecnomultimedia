//ALGUNAS FUNCIONES PARA EL ESTADO JUGANDO

void manzanas(){
    for (int y=0; y<cant2; y+=2) {
        
    if (sobreAlgo(y*alto,y*alto,alto,alto)) {
        sobreM[y] = true; 
      }
      if (sobreM[y]== true) {
        tint(255,0);
      } else {
        tint(255,255);
      }  
    if (y%4==0) {
      posx= 60;
    } else {
      posx=550;
    }
    
    image(manzana,posx, alto+(y*alto),alto,alto);
    }
}

void arbustos(){
 for (int y=0; y<cant2; y+=2) {
    fill(103, 162, 44);
    if (y%4==0) {
      posx= 120;
    } else {
      posx=20;
    }
     arbustos(posx, alto+(y*alto), alto+10);
     
   if(sobreAlgo(posx,alto+(y*alto),alto+400,alto)){
      estado = "perder";
    }
      rect(posx,alto+(y*alto),alto+400,alto);//rectangulo de fondo del arbusto
   }
 }
 
void puntaje(){
    fill(255);
    rect(0,550,width,50,50);
    fill(247,181,140);
    textAlign(CENTER);
    text("PUNTAJE", 120, 585);
    
    for (int i=0; i<cant; i++) {
      distan[i] = dist(px[i], py[i], px[i], 400);
      opacidad[i] = map(distan[i], mouseY, 0, 50, 0);
      tam[i] = map(distan[i], 0, height, 50, 20);
      tint(255, 255, 255, opacidad[i]);

      if (py[i]<450) {
        py[i] = 590;
      }

      image(manzana, px[i], py[i], tam[i], tam[i]);
      py[i]+= dy[i];
    }
}
