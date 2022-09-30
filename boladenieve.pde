class boladenieve {
  float x, y, t;
  float y2;
  int  tam;
  boolean drag, dentro;
  boolean creciendo;
  boolean rojo;
  boladenieve() {
    x = random(70, width-50);
    y = random( 150, height-50);
    t = 40;
    tam = tam*2;
  }
  void actualizar() {
    if ( mousePressed ) {
      drag = true;
    } else {
      drag = false;
    }

    float d = dist( x, y, mouseX, mouseY );
    if ( d < t/2 )
      dentro = true;
    else
      dentro = false;
  }
  void Drag() {
    if ( drag && dentro ) {
      x = mouseX;
      y = mouseY;
    }
  }
  void dibujar() {
    pushStyle();
    fill(211);
    circle( x, y, tam );
    {
      if (creciendo) {
        tam++;
      } else {
        tam--;
      }

      if (tam > 90) {
        creciendo = false;
        rojo = true;

        fill(255, 0, 0);
      } 

      if (tam < 1) {
        creciendo = true;
      }
      if (rojo) {
        fill(255, 0, 0);
      }
      circle( x, y, tam );
      popStyle();
    }
  }
}
