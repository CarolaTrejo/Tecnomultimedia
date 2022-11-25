class Principal {
  //aqui creamos objetos, propiedades, imagenes, fuentes, etc
  int pantalla, Tiempo, IndiceTiempo, tiempo;
  PImage conejo, enemigo, zanahoria, home, instrucciones, perdiste, ganaste, game;
  Conejo kuki;
  Zanahoria premio;
  Enemigo ArregloHojas [] = new Enemigo [6];
  Boton ArregloBoton [] = new Boton [5];  


  Principal() {
    Tiempo = 0;
    IndiceTiempo = 0;
    pantalla = 0;
    game=loadImage("game.png");
    home= loadImage("home.png");
    instrucciones=loadImage("instrucciones.png");
    perdiste= loadImage("perdiste.png");
    ganaste=loadImage("ganaste.png");
    conejo = loadImage("conejo.png");
    enemigo = loadImage("enemigo.png");
    zanahoria = loadImage ("zanahoria.png");
    premio = new Zanahoria (zanahoria, width/2, height/4-70, 50);
    kuki = new Conejo(conejo, width/2, height - 80/2, 50);


    for (int i = 0; i < ArregloHojas.length; i ++) {
      ArregloHojas[i] = new Enemigo (enemigo, 50);
    }

    ArregloBoton[0] = new Boton (300, 300, 100, 50); //boton pantallaInicio
    ArregloBoton[1] = new Boton (width/2, 300, 60, 40); //boton pantallaInstrucciones
    ArregloBoton[2] = new Boton (width/2, 300, 100, 130); //boton pantallaPerder
    ArregloBoton[3] = new Boton (width/2, 300, 110, 120); //boton pantallaGanar
  }


  void dibujar() {
    Reinicio();
    if (pantalla == 0) {//Inicio
      image(home, 0,0);
      ArregloBoton[0].DibujarBoton(0, 1);
    }
    if (pantalla == 1) {//Instrucciones
      image(instrucciones, 0,0);
      ArregloBoton[1].DibujarBoton(1, 2);
    }

    if (pantalla == 2) {//Juego
      image(game, 0,0);

      kuki.DibujoConejo();
      premio.DibujoZanahoria ();

      for (int i = 0; i < ArregloHojas.length; i ++) {
        ArregloHojas[i].DibujoEnemigo();
      }

      Tiempo(1000);
      Meatropello();
      gane();
      fill(0);
      text(IndiceTiempo/10, width-60, height/4-70);
    }
    if (pantalla == 3) {//Perder
      image(perdiste, 0,0);
      ArregloBoton[2].DibujarBoton(3, 0);
    }
    if (pantalla == 4) {//Ganar
      image(ganaste, 0,0);
      ArregloBoton[3].DibujarBoton(4, 0);
    }
  }
  void Tiempo(float TE) {
    if (millis() >= Tiempo + TE) {
      IndiceTiempo ++;
    }
    if (IndiceTiempo == 1000) { 
      pantalla = 3;
    }
  }
  void MovimientoConejo(int tecla) {
    kuki.moverConejo(tecla);
  }

  //............................................... colision hojas
  void Meatropello() {
    for (int i = 0; i < ArregloHojas.length; i ++) {
      float distancia = dist(kuki.Cx, kuki.Cy, ArregloHojas[i].Ex, ArregloHojas[i].Ey);
      if (distancia < kuki.Ct/2 +ArregloHojas[i].Et/2) {
        kuki.Auch = false;
        ArregloHojas[i].choque();
        kuki.Cx = width/2;
        kuki.Cy = height - 80/2;
      }
    }
  }
  //............................................... colision zanahoria
  void gane() {
    float distancia = dist(kuki.Cx, kuki.Cy, premio.Zx, premio.Zy);
    if (distancia < kuki.Ct/4 + premio.Zt/4) {
      kuki.Auch = false;
      premio.llego();
      pantalla =4;
    }
  } 
  void Reinicio() {
    if (pantalla == 0) {
      IndiceTiempo = 0;
      Tiempo = 0;
      kuki.Cx = width/2;
      kuki.Cy = height - 80/2;
    }
  }
  //....................................................... para cambiar pantalla
  void TocoBoton() { //
    //ARREGLO BOTONES
    if (ArregloBoton[0].YATOQUE(300, 300, 100, 50) && pantalla == ArregloBoton[0].ahora) {
      pantalla = ArregloBoton[0].despues;
    }

    if (ArregloBoton[1].YATOQUE(width/2, 300, 60, 40) && pantalla == ArregloBoton[1].ahora) {
      pantalla = ArregloBoton[1].despues;
    }
    if (ArregloBoton[2].YATOQUE(width/2, 300, 60, 40) && pantalla == ArregloBoton[2].ahora) {
      pantalla = ArregloBoton[2].despues;
    }
    if (ArregloBoton[3].YATOQUE(width/2, 300, 60, 40) && pantalla == ArregloBoton[3].ahora) {
      pantalla = ArregloBoton[3].despues;
    }
  }
}
