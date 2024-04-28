//  Chiara abril alegre , comision 4 , legajo 91545/2 

PImage foto1;
void setup() {
size(800,400);
foto1 = loadImage("espadadelcaballero.jpg");
}

void draw(){
background(255);
println(mouseX,mouseY);
image(foto1,0,0,400,400);


fill(0);
rect(590,50,22,64);
fill(234,234,33);
circle(601,38,30);
fill(203,203,203);
rect(586,112,30,250);
//pinta de espada
beginShape();
fill(203,203,203);
vertex(586,360);
vertex(600,391);
vertex(617,360);
endShape();
//guarda espada
stroke(3);
fill(0);
bezier(545,123,507,107,688,107,655,123);

}
