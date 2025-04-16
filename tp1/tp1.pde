PImage joystick;

void setup(){
 size(800, 400);
 background(60, 25, 5);
 joystick = loadImage("joystick.jpg");
}

void draw(){
  image(joystick, 0, 0);
  
  strokeWeight(5);
  stroke(0);
  line(400, 0, 400, 400);
  
  fill(255, 0, 0);
  circle(506, 131, 50); //relleno mango izquierdo
  circle(689, 132, 50); //relleno mango dcho
  rect(115 + 400, 107, 165, 129); //cuerpo del joystick
  ellipse(78+400, 205, 95, 220); //mango izquierdo
  ellipse(718, 205, 95, 220); //mango dcho
  circle(140+400, 207, 70); //base palanca izquierda
  circle(255+400, 207, 70); //base palanca derecha
  circle(82+400, 151, 90); //base flechitas
  circle(315+400, 151, 90); //base botones
  
  noFill();
  fill(0);
  rect(138 + 400, 106, 120, 60); //touchpad
  circle(137+400, 205, 40); //palanca izquierda
  circle(258+400, 205, 40); //palanca derecha
  circle(288+400, 151, 20); //boton cuadrado
   circle(342+400, 151, 20); //boton circulo
    circle(315+400, 125, 20); //boton triangulo
     circle(315+400, 175, 20); //boton cruz
     //flechita abajo
  triangle(76+400, 163, 81+400, 155, 86+400, 163);
  rect(75+400, 165, 12, 12);
  //flechita arriba
  triangle(76+400, 135, 81+400, 143, 86+400, 135);
  rect(75+400, 120, 12, 12);
  //flechita izquierda
  triangle(466, 145, 472, 150, 466, 155);
  rect(51+400, 144, 12, 12);
  //flechita derecha
  triangle(496, 155, 490, 150, 496, 145);
  rect(99+400, 144, 12, 12);
  circle(198+400, 210, 15); //boton PS
  //botoncitos audio
  circle(180+400, 176, 2); //1ra fila
  circle(188+400, 176, 2);
  circle(196+400, 176, 2);
  circle(204+400, 176, 2);
  circle(212+400, 176, 2);
  circle(185+400, 184, 2); //2da fila
  circle(193+400, 184, 2);
  circle(201+400, 184, 2);
  circle(209+400, 184, 2);
  circle(189+400, 192, 2); //3ra fila
  circle(197+400, 192, 2);
  circle(205+400, 192, 2);
  rect(182+400, 232, 32, 3); //(puerto auricular)
  ellipse(128+400, 119, 7, 12); //boton share
  ellipse(269+400, 119, 7, 12); //boton options
  
  strokeWeight(1); //logo PS
  fill(255);
  circle(598, 209, 7);
  ellipse(597, 214, 12, 4);
  rect(195+400, 205, 3, 10);
  
  strokeWeight(2); //cuadrado
  stroke(180, 100, 180);
  noFill();
  rect(281+400, 144, 13, 13);
  
  stroke(200, 70, 90); //circulo
  circle(342+400, 151, 15);
  
  stroke(20, 200, 130); //triangulo
  triangle(307+400, 129, 315+400, 116, 324+400, 129);
  
  stroke(20, 130, 180);
  line(308+400, 182, 322+400, 167);
  line(308+400, 167, 322+400, 182);
  
  println("X:" + mouseX);
  println("Y:" + mouseY);
  println();
}
