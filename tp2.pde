//Alumna Chiara Alegre, comision4, tp2, legajo 91454/2//
import ddf.minim.*;
Minim minim;
AudioPlayer player;
PImage f1, f2, f3, f4, f5, f6, f7, f8, botonPlay, botonReinicio; //imagenes
PFont fuente1,fuente2,fuente3,fuente4;//fuentes
float botonX, botonY, Radioboton; //boton de musica
float reinicioBotonX, reinicioBotonY, reinicioBotonAncho, reinicioBotonAlto;//boton reinicio
float Xtext,Ytext,velX,velY; //animacion txt
String txt1, txt2, txt3, txt4, txt5, txt6, txt7, txt8,txt9; //texto
float posX; ///animaciontxt1
int textVert,stopFrame,stopTime;//texto 4 veticalfloat posX;
float textX2,text3PosY,textX;
float variableColor;
int pantallaActual = 1;
int tiempoPantalla = 0;
int textposY,posYtxt;
int opacidad;


void setup() {
  size(640, 480);
  
  minim = new Minim(this);
  player = minim.loadFile("el-viaje-de-chihiro-instrumental.wav");
  
  fuente1 = loadFont("Arial-ItalicMT-48.vlw");
  fuente2 = loadFont("fuentejap.vlw");
  fuente3 = loadFont("font3.vlw");
  fuente4 = loadFont("font4.vlw");
  
  txt1 = "El Viaje De Chihiro \nde Estudio Ghibli";
  txt2 = "Pelicula Japonesa creada en\n 2001 por Miyazaki";
  txt3 = "Chihiro y sus padres se están \nmudando a otra ciudad\n un hecho que la niña encuentra molesto\n al no estar de acuerdo con el cambio\n y no duda en demostrarlo\ncon su falta de ánimo y mal humor.";
  txt4 = "la pelicula comienza con una niña inmadura\npero poco a poco nos va mostrando\n a una niña afrontando su viaje\n hacia la madurez";
  txt5 = "En esta historia Chihiro pierde su nombre\n y lucha constantemente para descubrir su identidad\nen el camino se van a presentar muchos obstáculos\n que tiene que ir atravesando";
  txt6 = "Durante su estancia Chihiro demuestra valor\n determinacion y bondad\nmientras se enfrenta a diversos\ndesafios y hace nuevos amigos";
  txt7 = "en mi opinion una de las\n mejores peliculas\n de anime";
  txt8 = "Podes encontrar\n en Netflix";
  txt9 = "La pelicula explora temas\n como el crecimiento personal, el coraje\n y la importancia de la identidad\ntodo en un mundo magico";
  f1 = loadImage("f1.jpg");
  f2 = loadImage("f2.jpg");
  f3 = loadImage("f3.jpg");
  f4 = loadImage("f4.jpg");
  f5 = loadImage("f5.jpg");
  f6 = loadImage("f6.jpg");
  f7 = loadImage("f7.jpg");
  f8 = loadImage("f8.jpg");

  botonPlay = loadImage("play.png");
  botonX = 30;
  botonY = 30;
  Radioboton = 20;

  botonReinicio = loadImage("botonreinicio.png");
  reinicioBotonX = 220;
  reinicioBotonY = 440;
  reinicioBotonAncho = 200;
  reinicioBotonAlto = 45;
//posicion del text2
  textX2 = 800;
  textVert = height;
  stopFrame = 0;
  stopTime = 180;
 
 text3PosY=0; //posicion del texto 3
variableColor=0; //valor del colortxt3
textX=0;
Xtext=0;
Ytext=0;
velX=1;
velY=1;

textposY=-100;
posYtxt=-100;
opacidad=255;
}

void draw() {
  background(255);
  println(frameCount);
  println(mouseX + "X", mouseY + "Y");
  
  if (pantallaActual < 8 && frameCount % (60 * 10) == 0) {
    tiempoPantalla++;
    pantallaActual = (pantallaActual % 8) + 1;
  }
  
  textAlign(CENTER, CENTER); 
  if (pantallaActual == 1) {
    image(f1, 0, 0, width, height);
    textFont(fuente2);
    textSize(width / 10); 
    fill(255, 3, 125);
    posX = (posX + 1) % width;
    text(txt1, posX, height / 2);
    
    textFont(fuente1);
    fill(199, 3, 255, 95);
     textSize(25);
    text(txt2, width / 2, height / 4);
    
  } else if (pantallaActual == 2) {
    image(f3, 0, 0, width, height);
    stroke(5);
    fill(0);
    textFont(fuente4);
    textSize(width / 20);
    text(txt3, textX2, height / 2);
    if (textX2 >= width / 2) {
      textX2--; 
    }
  } else if (pantallaActual == 3) {
    image(f4, 0, 0, width, height);
    textFont(fuente4);
    textSize(width / 20);
    textAlign(CENTER,CENTER);
    fill(255);
    text(txt4, width / 2, textVert);
    if (textVert <= height / 2) {
      stopFrame++;
      if (stopFrame >= stopTime) {
        textVert = height;
        stopFrame=0;
      }
    } else {
      textVert -= 2;
    }
    text(txt4, width/2, textVert);
    
    
  } else if (pantallaActual == 4) {
    image(f5, 0, 0, width, height);
    textFont(fuente1);
    stroke(20);
    textSize(width / 20);
   variableColor=(variableColor+1)%256;
   fill(variableColor,3,125);
    text(txt5, width / 2, text3PosY);
    text3PosY+=1;
    if(text3PosY>height){
      text3PosY=0;
    }
    
  } else if (pantallaActual == 5) {
 image(f6, 0, 0, width, height);
 textFont(fuente1);
 fill(255,30,95);
 text(txt7,width/2,height/2);
 
  
  } else if (pantallaActual == 6) {
    image(f7, 0, 0, width, height);
    textFont(fuente4);
    textSize(width / 20);
    fill(255);
    Xtext+= velX;
    Ytext+= velY;
    if(Xtext> width|| Xtext<0){
    velX*=-1;
  }
    if(Ytext> height|| Ytext<0){
    velY*=-1;
  } 
    text(txt6, Xtext,Ytext);  
    
  } else if (pantallaActual == 7) {
    image(f8, 0, 0, width, height);
    textFont(fuente4);
    textSize(width / 20);
    fill(255);
    text(txt8, width / 2,  textposY);
    textposY +=1;
    if(textposY>height + 50){
    textposY= -100;
   
    }
    
  } else if (pantallaActual == 8) {
    image(f2, 0, 0, width, height);
    textFont(fuente2);
    textSize(width / 20);
    fill(255, 0, 0, opacidad);
    text(txt9, width / 2, height / 2);
    posYtxt+=1;
    opacidad-=1;
    if (opacidad < 0) {
      posYtxt = -100;
      opacidad = 255;
    }
    
  
    // Dibujar botón 
    image(botonReinicio, reinicioBotonX, reinicioBotonY, reinicioBotonAncho, reinicioBotonAlto);
  }
  
  // Dibujar botón de musica
  image(botonPlay, botonX, botonY, Radioboton * 2, Radioboton * 2);
}

void mousePressed() {
  float d = dist(mouseX, mouseY, botonX + Radioboton, botonY + Radioboton);
  if (d <= Radioboton) {
    println("reproducir musica");
    if (player.isPlaying()) {
      player.pause();
    } else {
      player.play();
    }
  } else {
    println("fuera del area del boton");
    if (player.isPlaying()) {
      player.pause();
    }
  }

//boton musica
  if (mouseX >= reinicioBotonX && mouseX <= reinicioBotonX + reinicioBotonAncho &&
      mouseY >= reinicioBotonY && mouseY <= reinicioBotonY + reinicioBotonAlto) {
    println("reiniciar presentacion");
    reiniciarPresentacion();
  }
}

void reiniciarPresentacion() {
  pantallaActual = 1;
  tiempoPantalla = 0;
  posX = 0;
  textX2 = 800;
  textVert = height;
  stopFrame = 0;
  player.rewind();
  player.pause();
}
