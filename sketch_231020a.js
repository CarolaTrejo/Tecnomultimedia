let juego;

function setup() {
  createCanvas(600, 400);
  juego = new Principal();
}

function draw() {
  juego.dibujar();

  if (keyIsPressed) {
    juego.MovimientoCerdito(keyCode);
  }
}

function mousePressed() {
  juego.TocoBoton();
}
