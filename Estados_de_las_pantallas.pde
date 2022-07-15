void Pantalla1 (){
  background(255);
  noStroke();
  fill(114,215,240,150);
  ellipse (400, 300, 550, 550);
  textFont(titulos,100);
  strokeWeight (5);
  stroke(0,0,255);
  fill(0);
  text("PLOP", width/2, height/3);
  }

void pantallaJugando(){
  textFont(texto,20);
   fill(0);
   text("vidas: " + vidas, 50,50 );
   text("puntos: " + puntos, 700,50 );
   burbujas();
 
}

void pantallaGanaste(){
  fill(0);
  textAlign(CENTER);
  textFont(titulos,40);
  text("GANASTE!!!!" , width/2, height/6);
}

void pantallaPerdiste(){
  fill(0);
  textAlign(CENTER);
  textFont(titulos,40);
  text("Perdiste" , width/2, height/6);
  
}

void pantallaInstrucciones(){
  background(255);
  fill(0);
  textFont(titulos,40);
  textAlign(CENTER);
  text("INSTRUCCIONES", width/2, height/8);
  textFont(texto,20);
  noStroke();
  fill(114,215,240,150);
  ellipse (60, 200, 100,100);
  textAlign(LEFT);
  fill(0);
  text("Has click en una de las burbujas para explotarlas y eliminarlas \n antes de que lleguen a la parte inferior.", 150, 200 );
  fill(114,215,240,150);
  ellipse (60, 310, 100,100);
  fill(0);
  text("La dificultad es unica, a veces puede ir mas lento otras mas rapido. \n ESFUERZATE!!", 150, 300);
  fill(114,215,240,150);
  ellipse (60, 420, 100,100);
  fill(0);
  text("Pierdes cuando 3 burbujas tocan la parte inferior de la pantalla.",150,420);
  fill(114,215,240,150);
  ellipse (60, 530, 100,100);
  fill(0);
  text("Ganas al eliminar 10 burbujas.",150,530 );
}

void pantallaCreditos(){
  textFont(titulos,40);
  fill(0);
  text("CREADO POR" , width/2, height/6);
  textFont(texto,25);
  fill(0);
  text("Julian Jara Aguirre (Shaihueque)" , width/2, height/4);
}

void restablecerValores(){
vidas=3;
puntos=0;
  for(int i=0; i<cant;i++){
 tam [i] = random(40,100);
 direcc [i] = random (1,5);
 pos [i][0] = random (50,width-50);
 pos [i][1] = random(-100, 0);
 resta[i]=true;
}
}

boolean plop(float mx, float my, float posx, float posy, float tam){
float distan = dist(mx, my, posx, posy);
return distan < tam;
}
