class Enemigo {
  constructor(Enemigo, tam) {
    this.Enemigo = Enemigo;
    this.Et = tam;
    this.Ex = random(-width / 2, -this.Et);
    this.Ey = random(this.Et / 2, height / 2);
    this.Ev = random(2, 4);
    this.Mechoco = false;
    
  }

  DibujoEnemigo() {
    push();
    imageMode(CENTER);
    image(this.Enemigo, this.Ex, this.Ey, this.Et, this.Et);
    pop();
    this.ME();
  }

  ME() {
    if (this.Ex > width + this.Et || this.Mechoco) {
      this.Ex = -this.Et;
      this.Ey = random(height);
      this.Ev = random(2, 4);
      this.Mechoco = false;
    }
    this.Ex += this.Ev;
  }

  choque() {
    this.Mechoco = true;
  }
}
