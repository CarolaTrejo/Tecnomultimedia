
PFont letra1, letra2, letra3;
PImage Castillo, Pixar, Nubes, Negro;
color cLetra = color (0, 255, 255);
int value = 0;
void setup() {
  size (600, 400);
  textAlign(CENTER, CENTER);
  //tipografía e imágenes
  letra1=loadFont("BernardMT-Condensed-35.vlw");
  letra2=loadFont("Amiri-Bold-48.vlw");
  letra3=loadFont("CooperBlack-38.vlw");
  //imágenes
  Castillo=loadImage("Castillo.jpg");
  Pixar=loadImage("Pixar.jpg");
  Nubes=loadImage("Nubes.jpg");
  Negro=loadImage("Negro.jpg");

  textFont (letra1);
  textAlign (CENTER, CENTER);
}
void draw() {
  background(0);
  println(mouseY, mouseX);
  //TEXTO 1
  imageMode(CENTER);
  image (Castillo, 300, 200, 600, 400);

  //PANTALLA 1
  if (frameCount<270) {
    textFont (letra1);
    fill (frameCount);
    textSize (80);
    text ("Walt disney pictures", 300, 350);
  }
  //PANTALLA 2
  else if ((frameCount>290)&&(frameCount<400)) {
    imageMode(CENTER);
    image (Pixar, 300, 200, 600, 400);
    textFont(letra2);
    fill(random(255));
    textSize(40);
    text("PRESENTA", 290, 330);
  }


  //PANTALLA 3
  if ( frameCount > (6*65) ) {
    imageMode(CENTER);
    image(Nubes, 300, 200, 600, 400);
    textFont(letra3);
    fill(255, 0, 0);
    textSize(80);
    text("TOY", 300, 170);

    textFont(letra3);
    fill(239, 255, 75);
    textSize(80);
    text("STORY", 300, 220);

    textFont(letra3);
    fill(0, 0, 255);
    textSize(80);
    text("3", 300, 260);
  }

  //PANTALLA 4
  //directed by
  if ( frameCount > (6*78) ) {
    imageMode(CENTER);
    image(Negro, 300, 200, 600, 400);
    textFont (letra2);
    fill (239, 255, 75);
    textSize (30);
    text ("Directed by", width/2-80, height/2-70);

    textFont (letra1);
    fill (255);
    textSize (70);
    text ("Lee Unkrich", width/2, height/2);
  } 
  //PANTALLA 5
  if ( frameCount > (6*85) ) {
    imageMode(CENTER);
    image(Negro, 300, 200, 600, 400);
    textFont (letra2);
    fill (239, 255, 75);
    textSize (30);
    text ("Produced by", width/2-80, height/2-70);

    textFont (letra1);
    fill (255);
    textSize (70);
    text ("Darla K.anderson", width/2, height/2);
  }
  //PANTALLA 6
  if ( frameCount > (6*90) ) {
    imageMode(CENTER);
    image(Negro, 300, 200, 600, 400);
    textFont (letra2);
    fill (239, 255, 75);
    textSize (30);
    text ("Music composed", 215, 130);

    textFont (letra1);
    fill (255);
    textSize (75);
    text ("Randy Newman", width/2, height/2);
  }  
  //PANTALLA 7
  if ( frameCount > (6*95) ) {
    imageMode(CENTER);
    image(Negro, 300, 200, 600, 400);
    textFont (letra2);
    fill (239, 255, 75);
    textSize (35);
    text ("Woody", 190, 130);

    textFont (letra1);
    fill (255);
    textSize (75);
    text ("Tom Hanks", width/2, height/2);
  }
  //PANTALLA 8
  if ( frameCount > (6*100) ) {
    imageMode(CENTER);
    image(Negro, 300, 200, 600, 400);
    textFont (letra2);
    fill (239, 255, 75);
    textSize (33);
    text ("Buzz lightyear", 195, 120);

    textFont (letra1);
    fill (255);
    textSize (75);
    text ("Tim Allen", width/2, height/2);
  }
//PANTALLA 9
  if ( frameCount > (6*105) ) {
    imageMode(CENTER);
    image(Negro, 300, 200, 600, 400);
    fill(random(10, 500), random(10, 500), 100);
    rect(230,250,100,90);
    textFont(letra2);
    textSize(30);
    fill(50, random(10, 500), random(10, 500));
    text("Click para Reiniciar", 290, 190);
  }
}
void mousePressed() {
  if (mouseX>200&&mouseX<300&&mouseY>300&&mouseY<350) {
    frameCount=0;
  }
}
