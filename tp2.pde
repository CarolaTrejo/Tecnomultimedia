//https://www.youtube.com/watch?v=_Cso0ncwmxU&ab_channel=CarolaTrejo//
int i = 20;
int a= 20;
void setup() {
  size(640, 600); 
  background(0);
}
void draw() {
  background(0);
  for (int x = i; x <= width - i; x += i) {
    for (int y = a; y <= height - a; y += a) {
      fill(random (10, 255));
      ellipse(width/2, height/2, a+30, a+30);
      stroke(random (10, 255));
      fill(random (10));
      line(x, y, width/2, height/2);
    }
  }
}

void mouseMoved() {
  background(random(10, 500), random(10, 500), random(10, 500), random(10, 500));
  ellipse(width/2, height/2, a+30, a+30);
  if (frameCount<300) {
    textSize (70);
    fill(50, random(10, 500), random(10, 500));
    text ("Ilusión óptica", 100, 500);
  }
}
//Para resetear
void keyPressed() {
  if (key==' ') {
    background(255);
  }
}
