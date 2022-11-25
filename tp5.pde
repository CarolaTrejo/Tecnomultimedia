//https://www.youtube.com/watch?v=BbPkNzJk7ok&ab_channel=CarolaTrejo

Principal juego;
//COMUNICACION ENTRE OBJETOS 
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
  minim = new Minim (this);
  player = minim.loadFile("audio.wav");
  size (600, 400);
  juego = new Principal();
}
void draw () {
  player.play();
  juego.dibujar();

  if (keyPressed) {
    juego.MovimientoConejo(keyCode);
  }
}

void mousePressed() {
  juego.TocoBoton ();
}
