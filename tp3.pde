//Julian Jara Aguirre Num Legajo: 88362/1
// https://youtu.be/5M4W3cRe-VY
// www.youtube.com/watch?v=5M4W3cRe-VY

PFont titulos, texto;
String estados;
int cant = 10;
int puntos = 0;
int vidas = 3;
float [][] pos = new float [cant][cant];
float [] tam = new float [cant];
float[] vel = new float [cant];
float [] direcc = new float [cant];
boolean [] resta = new boolean [cant]; 

void setup (){
size(800,600);

titulos = createFont ("Bondrians.ttf", 80);
texto = createFont ("Roboto-Light.ttf", 40);

estados = "inicio";
textSize (25);
textAlign (CENTER);

for(int i=0; i<cant;i++){
 tam [i] = random(40,100);
 direcc [i] = random (1,3);
 pos [i][0] = random (50,width-50);
 pos [i][1] = random(-100, 0);
 resta [i] = true;
}
}

void draw (){
background(255);

if(estados == "inicio"){
 Pantalla1();
 boton(width/2,height/2, 150,50);
 boton(width/2,height/2+75,275,50);
 boton(650,550,125,50);
 textFont(texto,45);

 fill(0);
 text("JUGAR", width/2,height/2+15);
 
 fill(0);
 textSize(35);
 text("INSTRUCCIONES", width/2,height/2+88);
 
 fill(0);
 textSize(25);
 text("CREDITOS", 650,560);
 
} else if(estados =="jugando"){
  pantallaJugando();
} else if (estados == "ganaste"){
  pantallaGanaste();
  boton(width/2,height/3,150,50);
  textFont(texto,25);
  fill(0);
  text("Salir",width/2,height/3+10);
} else if(estados=="perdiste"){
  pantallaPerdiste();
  boton(width/2,height/3,100,50);
  boton(width/2,height/2,225,50);
   textFont(texto,25);
   textAlign(CENTER);
  fill(0);
  text("Salir", width/2,height/3+10);
  text("Volver a Intentar", width/2,height/2+10);
} else if (estados=="Instrucciones"){
  pantallaInstrucciones();
  boton(650,550,75,40);
  textFont(texto,25);
  fill(0);
  text("Jugar",615,560);
} else if(estados == "creditos"){
  pantallaCreditos();
  boton(width/2,height/2,150,50);
  textFont(texto,25);
  fill(0);
  text("Salir",width/2,height/2+10);
}
}

void mousePressed(){
if(estados == "inicio"){  
  if (sobreBoton(width/2,height/2,275,50)){
estados = "jugando";
 restablecerValores();
}
if(sobreBoton(width/2,height/2+75,275,50)){
  estados= "Instrucciones";
  }
if(sobreBoton(650,550,125,50)){
  estados= "creditos";
}
}
if(estados=="Instrucciones"){
  if(sobreBoton(650,550,75,40)){
  estados= "jugando";
  restablecerValores();
}
}
if(estados=="perdiste"){
if (sobreBoton(width/2,height/2,225,50)){
estados = "jugando";
vidas=3;
puntos=0;
  for(int i=0; i<cant;i++){
 resta[i]=true;
 tam [i] = random(40,100);
 direcc [i] = random (1,5);
 pos [i][0] = random (50,width-50);
 pos [i][1] = random(-100, 0);
}


}
if (sobreBoton(width/2,height/3,100,50)){
estados = "inicio";
restablecerValores();
}
}
if(estados=="ganaste"){
  if(sobreBoton(width/2,height/3,150,50)){
  estados = "inicio";
  restablecerValores();
  }
}
if(estados=="creditos"){
  if(sobreBoton(width/2,height/2,150,50)){
    estados= "inicio";
    restablecerValores();
}
}
for (int i=0; i<cant;i++){
if(plop(mouseX,mouseY, pos[i][0], pos[i][1], tam[i]/2)){
  pos[i][0] = random(50,width-50);
  pos[i][1] = -50;
  puntos +=10;
}
}
}
