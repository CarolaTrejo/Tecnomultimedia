class CasaLadrillo {
  constructor(casaladrillo, Zx, Zy, Zt) {
    this.Zx = Zx;
    this.Zy = Zy;
    this.Zt = Zt;
    this.casaladrillo = casaladrillo;
    this.colision = false;
  }

  DibujoCasaLadrillo() {
    push();
    imageMode(CENTER);
    image(this.casaladrillo, this.Zx, this.Zy, this.Zt, this.Zt);
    pop();
  }

  llego() {
    this.colision = true;
  }
}
