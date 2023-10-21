class Boton {
  constructor(BxParametro, By, Ancho, Alto) {
    this.BxPropiedad = BxParametro;
    this.By = By;
    this.Ancho = Ancho;
    this.Alto = Alto;
    this.ahora = 0;
    this.despues = 0;
  }

  DibujarBoton(aqui, alla) {
    this.ahora = aqui;
    this.despues = alla;
    fill(0);
    fill(255);
    stroke(200);
    rectMode(CENTER);
    rect(this.BxPropiedad, this.By, this.Ancho, this.Alto);
  }

  YATOQUE(BxParametro, By, Ancho, Alto) {
    this.BxPropiedad = BxParametro;
    this.By = By;
    this.Ancho = Ancho;
    this.Alto = Alto;
    return mouseX > this.BxPropiedad - this.Ancho / 2 &&
      mouseX < this.BxPropiedad + this.Ancho / 2 &&
      mouseY > this.By - this.Alto / 2 &&
      mouseY < this.By + this.Alto / 2;
  }
}
