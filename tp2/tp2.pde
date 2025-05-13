PImage inicio;
PImage foto1;
PImage foto2;
PImage foto3;
PImage foto4;
PImage foto5;
PFont fuente;
int alpha2;
int alpha4;
int alpha5;
boolean iniciar;
int pantalla;
int tiempo;
boolean reiniciar;
float tamanoTxtInicial;
float tamanoTxtMax;
float velocidadEscalado;
float posXTexto;



void setup(){
 size(640, 480); 
 inicio = loadImage("inicio.jpg");
 foto1 = loadImage("pantalla 1.png");
 foto2 = loadImage("pantalla 2.png");
 foto3 = loadImage("pantalla 3.jpg");
 foto4 = loadImage("pantalla 4.jpg");
 foto5 = loadImage("pantalla 5.jpeg");
 fuente = createFont("Monotype Corsiva", 30);
 alpha2 = 0;
 alpha4 = 0;
 alpha5 = 0;
 pantalla = 0;
 iniciar = false;
 reiniciar = false;
 tamanoTxtInicial = 1;
 tamanoTxtMax = 30;
 velocidadEscalado = 0.25;
 posXTexto = 0;
}  

void draw(){
  println(mouseX, mouseY);
  textFont(fuente);
  if(pantalla == 0){
  image(inicio, 0, 0); //-------------------------PANTALLA DE INICIO
  fill(255, 0, 0);
  rect(254, 370, 120, 40);
  fill(0);
  text("Iniciar", 275, 400);
}

  if(iniciar == true){
    tiempo++;
    //println(tiempo);
    if(pantalla == 1){ //-----------------------------------PANTALLA 1
      image(foto1, 0, 0);
      textSize(tamanoTxtInicial);
      if(tamanoTxtInicial < tamanoTxtMax){
         tamanoTxtInicial += velocidadEscalado;
      }
      fill(255);
      text("Red Dead Redemption 2 \nes un videojuego \ndesarrollado por \nRockstar Games lanzado \nen 2018. Es un mundo \nabierto de acción y \naventura ambientado en \nel Viejo Oeste.", 350, 40);
      if(tiempo == 60*7){
        pantalla = 2;
      }
  } else if(pantalla == 2){ //------------------------------PANTALLA 2
    image(foto2, 0, 0);
    alpha2++;
    fill(255, alpha2);
    text("En 1899, la era de los forajidos estaba llegando a su fin. \nLa banda de Van der Linde era una de las últimas que \nresistían en un mundo cada vez más civilizado.", 30, 70);
    if(tiempo == 60*14){
     pantalla = 3; 
    }
  } else if(pantalla == 3){ //------------------------------PANTALLA 3
    image(foto3, 0, 0);
    fill(255);
    text("Arthur Morgan intenta sobrevivir \nen este mundo tan cambiante, \nmientras intenta mantener la \nunidad de la banda y \nla lealtad a sus ideales. \nSin embargo, estos ideales \ncomenzarán a entrar \nen conflicto...", posXTexto, 90);
    if(posXTexto < 40){
    posXTexto += 0.5;
    }
    if(tiempo == 60*21){
      pantalla = 4;
    }
  } else if(pantalla == 4){ //----------------------------PANTALLA 4
    image(foto4, 0, 0);
    alpha4++;
    fill(255, alpha4); 
    text("A causa de estos conflictos, \ncontrae una enfermedad mortal, \nque lo llevará a cuestionarse \nel sentido de tanta violencia...", 30, 30);
    text("...y a buscar el significado de ser \nun buen hombre", 270, 425);
    if(tiempo == 60*28){
      pantalla = 5;
    }
  } else if(pantalla == 5){ //----------------------------PANTALLA 5
    image(foto5, 0, 0);
    alpha5++;
    fill(255, alpha5);
    textSize(25);
    text("Mientras la banda se desmorona, Arthur dedica su último tiempo \nde vida a darles a sus amigos esa oportunidad que no tuvo, \ny así finalmente alcanza su redención...", 35, 390);
    if(tiempo > 60*35){
    fill(255, 150);
    rect(530, 330, 90, 30);
    textSize(18);
    fill(0);
    text("Reiniciar", 545, 350);
  }
} 
}
    
}






void mousePressed(){
  //boton INICIAR
  if (mouseX > 254 && mouseX < 254+120 && mouseY > 370 && mouseY < 370+40){
    iniciar = true;
    pantalla = 1;
    tiempo = 0;
    reiniciar = false;
}
//boton REINICIAR
    if(mouseX > 530 && mouseY > 330 && mouseX < 530+90 && mouseY < 330+30){
    reiniciar = true;
    pantalla = 1;
    tiempo = 0;
    tamanoTxtInicial = 1;
    alpha2 = 0;
    posXTexto = 0;
    alpha4 = 0;
    alpha5 = 0;
  }

}
