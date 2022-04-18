//Magallanes Diaz, Lara Jazmín 
//tp0

//*********FIGURAS*********//

void setup(){
  size(400,400);
    background(231, 216, 197);
    
  //pan
  noStroke();
    fill(185, 143, 111);
    circle(150, 125, 140);
    circle(250, 125, 140);
    rect(100,100,200,200);
     
  fill(251, 219, 194);
    circle(150, 125, 110);
    circle(250, 125, 110);
    rect(115,115,170,170);
  
  //oso
   //lineart
  fill(143, 111, 90);
    ellipse(200,200,129,114);
    circle(160,160,65);
    circle(240,160,65);
    
   //orejas
  fill(155, 122, 103);
    circle(160,160,60);
    circle(240,160,60);
    
  fill(143, 111, 90);
    circle(160,160,40);
    circle(240,160,40);
    
    //cabeza
  fill(155, 122, 103);
    ellipse(200,200,125,110);
    
    strokeWeight(3);
  stroke(143, 111, 90);
    line(195,160,205,170);
    line(185,160,195,170);
    line(205,160,215,170);
    
    noStroke();
   fill(98, 71, 52);
   circle(180,210,15);
   circle(220,210,15);
   triangle(200,220,208,210,192,210);
   
   strokeWeight(3);
  stroke(98, 71, 52);
   line(200,215,200,222);
   
  //rubor
  noStroke();
  fill(250,169,149,95);
  ellipse(225,228,20,10);
  ellipse(175,228,20,10);
   
 /*diálogo
  strokeWeight(3);
  stroke(106, 88, 71);
  fill(255,239,225);
   ellipse(320,300,110,90);
   triangle(270,260,300,260,280,280);
   
   noStroke();
   
   triangle(275,265,305,262,282,282);
   ellipse(320,300,105,85);
   
  strokeWeight(3);
  stroke(106, 88, 71);
  noFill();
   circle(320,300,5);
   circle(330,300,5);
   circle(310,300,5);
  */
}

void draw () {
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
}
