class hielo {
  float x, y, tam;

  hielo( float x2, float y2, float tam2 ) {
    x = x2+5;
    y = y2;
    tam = tam2*2;
  }

  void actualizar() {
  }

  void dibujar() {
    pushStyle();
    rectMode( CENTER );
    rect( this.x, y, tam, tam );
    popStyle();
    
  }
}

  
