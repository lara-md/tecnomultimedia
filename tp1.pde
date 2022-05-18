
/* MAGALLANES DIAZ, Lara Jazmin
      Comisión 1
      
     ***TP1 Animando con Código***

*/

//imagenes
PImage luna;
PImage campo;
PImage pelo;
PImage dobles;
PImage lechuza;
PImage ojo;
PImage arbol;
PImage anne;
PImage cara;

PImage frame;
PImage hoja;
PImage fondo;
PImage mariposa;

//texto
PFont Georgia;

//variables
int opacidad;
int posX;
float posY;
boolean sube;

float px;
float py;


void setup (){
  size(600,338);
  
  //imagenes
   luna= loadImage("Screenshot_20220509-003529_YouTube.jpg");
   campo= loadImage("20220509_125018.jpg");
   pelo=loadImage("20220509_125011.jpg");
   dobles=loadImage("541992c24dffa81e9d5455d40242eae7.jpg");
   lechuza=loadImage("741fb665c2d0ab7c70cbbf5464c955c7.jpg");
   ojo=loadImage("879c83b78e770facf7b2ca9bb097ddfe.jpg");
   arbol=loadImage("10546f85f0ff473eb9c69b332fa5a98a.jpg");
   anne=loadImage("793e6e036c9d8009c83de0dbb41e995f.jpg");
   cara=loadImage("Screenshot_20220509-005154_YouTube.jpg");
   
   frame=loadImage("video_8mm_film_frame_by_nadamas_d5a0prq-fullview.png"); 
   hoja=loadImage("hoja.png");
   fondo=loadImage("790c62dc1212eebe2767bf7602e95951.jpg");
   mariposa=loadImage("butterfly.png");
   
   //texto
     Georgia = loadFont("Georgia-25.vlw");
     
     textFont(Georgia);
  
  //variables
    opacidad= 0;
    posX= 0;
    posY= 0;
    
    px = random (width);
    py = random (height);
}

void draw() {
  println(frameCount);
    //println(mouseX,mouseY);
  background(0);
     
  imageMode(CENTER);
  fill(255);
  
  //luna
  if(frameCount<=100){
    image(luna,(posX+250),175,700,394);
    posX = posX+1;
  }
      if(10<=frameCount && frameCount <=90){
        textAlign(CENTER);
        text ("A Netflix Original Series",300,175);
       }
       
  //arbol
  if(100<=frameCount && frameCount <=200){
     image(arbol,(posX+150),175);
     posX = posX+1;
     
  }
    if(110<=frameCount && frameCount <=195){
        textAlign(CENTER);
        text ("directed by \nNIKI CAROT",300,175);
       }
  
  //lechuza
  if(200<=frameCount && frameCount<=300){
    image(lechuza,300,posX+10,804,452);
    posX= posX-1;
    
  }
    if(210<=frameCount && frameCount <=290){
        text ("written by\n                         MOIRA WALLEY-BECKETT",120,270);
       }
    
  //dobles
  if(300<=frameCount && frameCount <=400){
    image(dobles,300,175,posX+736,posY+414);
    posX=posX-1;
    posY=posY-0.5;
  }
    if(310<=frameCount && frameCount <=390){
        text ("produced by\nSUSAN MURDOCH",300,175);
       }
  
    //cara
  if(400<=frameCount && frameCount <=500){
    image(cara,300,175,posX+710,posY+400);
    posX=posX+1;
    posY=posY+0.5;
  }
     if(410<=frameCount && frameCount <=490){
        text ("AMYBETH MCNULTY",300,175);
       }
  
  //ojo
  if(500<=frameCount && frameCount <=600){
    image(ojo,posX+200,175,800,450);
    posX-=1;
  }
    if(510<=frameCount && frameCount <=590){
      textAlign(LEFT);
        text ("GERALDINE\nJAMES",100,100);
       }
  
  //campo
  if(600<=frameCount&&frameCount<=700){
    image(campo,posX+300,175,800,451);
    posX-=1;
  }
    if(610<=frameCount && frameCount <=690){
      textAlign(RIGHT);
        text ("DALILA BELA\nLUCAS JADE ZUMANN\nAYMERIC JETT MONTAZ",550,250);
       }
  
  //pelo
  if(700<=frameCount&&frameCount<=900){
    image(pelo,posX+500,posY+175,800,451);
    posX-=1;
    posY-=0.5;
  }
    if(710<=frameCount && frameCount <=790){
      textAlign(RIGHT);
      //textSize(15);//
        text ("based on\nANNE OF GREEN GABLES\nBY LUCY MAUD MONTGOMERY",550,250);
       }
  
  //titulo anne
  
  //anne
    if(900<=frameCount&&frameCount<=1300){
      image(anne,300,175);
     
    }
 
  //rectangulo
  if(780<=frameCount&&frameCount<=900){
  fill(0,0,0,opacidad);
  opacidad= opacidad+5;
  noStroke();
  rect(0,0,600,350);
    
  }
 
  if(900<=frameCount&&frameCount<=1000){
  fill(0,0,0,opacidad);
  opacidad= opacidad-5;
  noStroke();
  rect(0,0,600,350);
    
  }
  
  //rectangulo cierre
  if(1200<=frameCount&&frameCount<=1300){
  fill(0,0,0,opacidad);
  opacidad= opacidad+5;
  noStroke();
  rect(0,0,600,350);
    
  }
  
  
  //frame
  //image(frame,300,175,600,350);
  

  //boton, mariposa y texto
  
  if(1300<=frameCount){
   
  imageMode(CENTER);
    image(fondo,300,175,600,350);
    fill(255,255,255,150);
    ellipse(300,175,100,100);
        
    image(hoja,300,175,100,100);
   
    image(mariposa,px,py,80,80);
      
    fill(255);
    textAlign(CENTER);
    text("[click to restart]",width/2,250);
    
  }
  
  //frame (es un marco de  negro pero que descarté porque se veia mal)
  //image(frame,300,175,600,350);
  
}

void mousePressed(){
 
  if(1300<=frameCount){
  if(mouseX>250 && mouseX<350 || mouseY>130 && mouseY<215){
   frameCount=0;
    posX=0;
    posY=0;
    opacidad=0;
    px = random (width);
    py = random (height);
  }
  }
}
