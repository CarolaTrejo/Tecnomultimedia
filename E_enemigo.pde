class Enemigo {
  float Ex, Ey, Ev, Et; 
  PImage Enemigo; 
  boolean Mechoco; //para la colision
  
  //constructor del enemigo 
  Enemigo(PImage Enemigo, float tam) {
    this.Enemigo = Enemigo;
    this. Et = tam;
    Ex = random(-width/2, - Et); 
    Ey = random(Et/2, height/2);
    Ev = random(2, 4);
    Mechoco = false;
  }
  
  void DibujoEnemigo() {
    pushStyle();
    imageMode(CENTER);
    image(Enemigo, Ex, Ey, Et, Et);
    popStyle();
    ME();
  }
  
  void ME() {
    if (Ex> width + Et || Mechoco) { 
      Ex = - Et;
      Ey = random(height);
      Ev = random(2, 4);
      Mechoco = false;
    }
    Ex += Ev;
  }
  //................................ Cambio el valor del booleano para detectar el choque
  void choque() {
    Mechoco = true;
  }
}
