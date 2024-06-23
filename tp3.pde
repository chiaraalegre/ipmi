//Alegre Chiara, comision 4 , tp3 url youtube :
int diametroCircle = 20;
int espacioCircle = 26;
PImage f;
boolean mouseEnCircle;
boolean invertido = false;

void setup() {
  size(800, 400);
  noStroke();
  f = loadImage("grilla.jpg");
}

void draw() {
  background(255); 
  image(f, 0, 0, 400, 400);

  mouseEnCircle = mouseX >= 0 && mouseX < 400 && mouseY >= 0 && mouseY < 400;

  dibujarCircle();
  println(mouseX, mouseY);
}

void mouseClicked() {
  diametroCircle+=3;
}

void keyPressed() {
  if (key =='r') {
    diametroCircle = 20;
    espacioCircle = 25;
    invertido = false;
  }
}
