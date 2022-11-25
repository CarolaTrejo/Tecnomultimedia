class Boton {
  int BxPropiedad, By, Ancho, Alto; 
  int ahora, despues;

  Boton (int BxParametro, int By, int Ancho, int Alto) { 
    this.BxPropiedad = BxParametro;
    this.By = By;
    this.Ancho = Ancho;
    this.Alto = Alto;
  }

  void DibujarBoton(int aqui, int alla) { 
    this.ahora = aqui;
    this.despues = alla;
    fill(0);
    fill(255);
    stroke(200);
    rectMode(CENTER);
    rect(BxPropiedad, By, Ancho, Alto);
  }


  boolean YATOQUE(int BxPropiedad, int By, int Ancho, int Alto) { //metodo que detecta los botones
    this.BxPropiedad = BxPropiedad;
    this.By = By;
    this.Ancho = Ancho;
    this.Alto = Alto;
    boolean Presione = mouseX > BxPropiedad - Ancho/2 && mouseX < BxPropiedad + Ancho/2 && mouseY > By - Alto/2 && mouseY < By + Alto/2 == true;
    return Presione;
  }
}
