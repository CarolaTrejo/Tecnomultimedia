class fondo {
  float tamanioX;

  //declaración de las instancias de mi clase/objetos.
  hielo hielito1, hielito2, hielito3, hielito4;
  boladenieve boladenieve1, boladenieve2, boladenieve3;
  fondo() {
    //CONSTRUCTORES
    hielito1 = new hielo ( 38, 300, 50 );
    hielito2 = new hielo( 280, 560, 50 );
    hielito3= new hielo( 550, 300, 50 );
    hielito4= new hielo( 300, 50, 50 );
    boladenieve1 = new boladenieve();
    boladenieve2 = new boladenieve();
    boladenieve3 = new boladenieve();
  }

  void actualizar() {
    boladenieve1.actualizar();
    boladenieve1.Drag();
    //
    boladenieve2.actualizar();
    boladenieve2.Drag();
    //
    boladenieve3 .actualizar();
    boladenieve3 .Drag();
  }
  void dibujar() {
    pushStyle();
    imageMode(CENTER);
    image (nieve, 300, 310, 600, 620);
    popStyle();
    hielito1.dibujar();
    hielito2.dibujar();
    hielito3.dibujar();
    hielito4.dibujar();
    boladenieve1 .dibujar();
    boladenieve2 .dibujar();
    boladenieve3.dibujar();
  }
}
