//https://www.youtube.com/watch?v=fLABk4lMp5E&ab_channel=CarolaTrejo
PImage nieve;
fondo fondito;
void setup() {
  fondito = new fondo();
  size(600, 600);
  nieve=loadImage("nieve.jpg");
}
void draw() {
  fondito.actualizar();
  fondito.dibujar();
}
