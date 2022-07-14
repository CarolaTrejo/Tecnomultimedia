//https://www.youtube.com/watch?v=3U2E_efZPaE&ab_channel=CarolaTrejo

float [] numeroZurgs = new float [10];
int contador = 0;
PImage inicio, fondo, creditos;
int tiempo;
int totaltiempo = 25000;
boolean iniciar = false;
float d = 50;
float x = random(600);
float y = random(height);
PImage buzz, zurg;

int Pantallas;

void setup() {
  size(800, 600);

  inicio = loadImage("inicio.jpg");
  fondo = loadImage("fondo.jpg");
  creditos = loadImage("creditos.jpg");
  textSize(20);
  tiempo = millis();
  for (int i = 0; i <numeroZurgs.length; i++) {
    caida();
  }
  Pantallas = 0;
}

void draw() {
  if (Pantallas == 0) {
    imageMode(CENTER);
    image(inicio, width/2, height/2);
    text("Atrapa 10 zurgs en el menor tiempo posible para ganar el juego,\nmanteniendo apretado el mouse y pasando sobre ellos o clickeandolos!", 30, 40);
    text("Apretá a \npara empezar a jugar", 570, 180);
  }
  if (Pantallas == 1) {
    imageMode(CENTER);
    image(fondo, width/2, height/2);
    for (int i = 0; i < numeroZurgs.length; i++) {
      caida();
      colision();
      puntaje();

      tiempoFuera();
    }
  }


  if (Pantallas == 2) {
    creditosFinal();
  }
}

void caida() {
  buzz = loadImage("buzz.png");
  imageMode(CENTER);
  image(buzz, mouseX, mouseY);
  y = y + 4 ;
  zurg = loadImage("zurg.png");
  image(zurg, x, y, d, d);
  if (y>height) {
    x = random(600);
    y = random(-100);
  }
}

void colision () {
  float distancia = dist(mouseX, mouseY, x, y);
  if (mousePressed) {
    if (distancia < d) {
      x = -1000;
      contador++;
    }
  }
}

void puntaje () {
  fill(255, 247, 0);
  text("Enemigos atrapados = " + contador, 400, 20);
}

void tiempoFuera() {

  int passedTime = millis() - tiempo;

  if (passedTime > totaltiempo) {
    background(fondo);

    if (contador >= 10) {
      text("¡lo conseguiste! `\n presiona la 'r' para reiniciar \n O la 'c' para ver los créditos", width/2, height/2, 50);
    } else if (contador <= 10) {
      text("¡Oh no, perdiste!, `\n presiona la 'r' para reiniciar :(", width/2, height/2, 50);
    }
  }
}

void creditosFinal() {
  imageMode(CENTER);
  image(creditos, width/2, height/2);
  fill(0);
  textSize(18);
  text("Trejo Carola y Ubaldi Guadalupe ", 80, 150);
  text("Tecno multimedia", 80, 200 );
  text("Fuente de las imágenes: Google", 80, 250);
  text("Comisión 2- tecno multimedia", 80, 300);
  text("Título en el cual nos basamos: película de Lightyear", 80, 350);
  text("Profesor: Matías Jauregui Lorda", 80, 400);
  text("Gracias por jugar ! ", 80, 450);
}


void keyPressed() {
  //KEY REINICIAR
  println("otra vez");
  if (key == 'r'|| key == 'R') {
    inicio = loadImage("inicio.jpg");
    fondo = loadImage("fondo.jpg");
    creditos = loadImage("creditos.jpg");
    textSize(20);
    tiempo = millis();
    for (int i = 0; i <numeroZurgs.length; i++) {
      caida();
    }

    Pantallas = 0;
    contador=0;
  }

  //KEY PARA JUGAR
  if (key == 'a'|| key == 'A') {
    Pantallas = 1;
  }
  //KEY PARA CREDITOS
  if (key == 'c'|| key == 'C') {
    Pantallas = 2;
  }
}
