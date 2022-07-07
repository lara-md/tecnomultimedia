/*      
         MAGALLANES DIAZ, Lara Jazmín
     com1- TP3 "Juego interactivo libre"
         link:
             https://youtu.be/VVetXsPcbuY
        El video dura más de dos minutos pero es en la menor
        cantidad de tiempo en la que pude explicar todo, en
        intentos anteriores duraban aprox 8 minutos.
*/
int cant = 50;
int cant2 = 7;
int alto;
int posx;

float [] px = new float[cant];
float [] py = new float[cant];
float [] dy = new float[cant];
float [] tam = new float[cant];
float [] opacidad = new float[cant];
float [] distan = new float[cant];
boolean []sobreM = new boolean [cant2];

String [] texto = {"¡GANASTE!","Kitty llegó a su casa sana y salva","¡PERDISTE!","Kitty se envenó con los arbustos","[ presione 'r' para reiniciar ]"};
String estado;
PImage manzana;
PImage kittymouse;
PImage kittycursed;
PImage kittyinicio;
PImage play;
PImage kittyganar;
PFont Verdana;

void setup() {
  size(600, 600);

  for (int i=0; i<cant; i++) {
    px[i] = random(20, 40);
    py[i] = random(570,580);
    dy[i] = random(-4, -0.5);
    tam[i] = random(10, 20);
  }

  manzana= loadImage ("manzana.png");
  kittymouse= loadImage ("kittymouse.png");
  kittycursed= loadImage("kittycursed.jpeg");
  kittyinicio= loadImage("kittyinicio.png");
  play= loadImage("jugar.png");
  kittyganar= loadImage("kittyganar.jpeg");
  Verdana= loadFont ("Verdana.vlw");
  estado = "inicio";
  alto= 70;
  posx= 0;
  
  //para que desaparezcan manzanas
  for (int i=0; i<cant2; i++) {
      sobreM[i] = false;
    }
}
  
void draw() {
  noStroke();
  textFont (Verdana);
  textSize(20);
  
//*****INICIO*****//
  //inicio
   if( estado.equals("inicio") ){
   background(142, 193, 201);
   tint(255);
    fill(122, 190, 57);
    rect(0,height/2,width,height/2);
    fill(255);              
    textAlign(CENTER);
    imageMode(CENTER);
    circle(width/2,height/3,300);
    image(kittyinicio, width/2, height/3,300,300 );
    text( "[ presione 's' para pasar a la siguiente ]", width/2, 500 ); 
    textSize(30);
     text( "y la travesía de\nlas manzanas", width/2, height/2+90 ); 
    
  //instrucciones
  }else if( estado.equals("instrucciones") ){
    background(142, 193, 201);
    fill(122, 190, 57);
    rect(0,height/3,width,height);
    fill(255);
    text("Ayudá a Kitty a llegar a su\ncasa mientras junta manzanas!\nCuidado con los arbustos, \nlos bordes no te harán nada,\npero ojo con adentrarse, \ndicen que tienen un veneno extraño...\nHacé click en la casa para ganar!",width/2,height/2);
    textSize(34);
    text( estado, width/2, height/3-10 );
    //tint(255,100);
     image(play,550,550,50,50);
  
  
//*****JUEGO*****//
}else if( estado.equals("jugando") ){
 
  background(122, 190, 57);
  //MANZANAS (posicion y que desaparezcan)
    manzanas();

  //CIELO Y CASA
  fill(142, 193, 201);
  rect(0, 0, width, 35);
  casita(530, 25, 50);

  //ARBUSTOS
     arbustos();
    
    //MOUSE
    noCursor();
    imageMode(CENTER);
    tint(255, 255);
    image(kittymouse, mouseX, mouseY, 50, 65);
    
    //PUNTOS
    puntaje();
   
  }else if(estado.equals("perder") ){
    
 /*****MOMENTO LUSER*****/
      fill(0);
      rect(0,0,width,height);
      tint(255,255);
      image(kittycursed,width/2,height/2,width,height);
      fill(0,100);
      rect(0,0,width,height);
     fill(255);
      text( texto[4], width/2, 350 );
      text( texto[3], width/2, width/2 );
      textSize(40);
       text( texto[2], width/2, 250 );
    
  }else if(estado.equals("ganar")){

/******MOMENTO CHAMPION******/
     image(kittyganar,width/2,height/2,width,height);
     fill(0,100);
     rect(0,0,width,height);
     fill(255);
      text(texto[4], width/2, 350 );
      text(texto[1], width/2, width/2 );
      textSize(40);
       text(texto[0], width/2, 250 );
  }
}
void keyPressed(){
  if( estado.equals("inicio") && key == 's' ){
    estado = "instrucciones";
  }
  if( estado.equals("ganar") || estado.equals("perder") && key == 'r' ){
    estado = "inicio";
     for (int i=0; i<cant2; i++) {
      sobreM[i] = false;
     }
      cursor();
  }
}

void mousePressed(){
  
  if( estado.equals("instrucciones") && dist( mouseX, mouseY, 550, 550) <= 25 ){
    estado = "jugando";
  }
  if( estado.equals("jugando") && dist( mouseX, mouseY, 550, 25) <= 25 ){
    estado = "ganar"; //para ganar cuando se toca la casa
  }
}
