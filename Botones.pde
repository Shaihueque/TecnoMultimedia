boolean sobreBoton(int bx, int by, int ancho, int alto){
 boolean porEncima = mouseX >bx-ancho/2 && mouseX< bx+ancho/2 && mouseY >by-alto/2 && mouseY<by+alto/2;
 return porEncima;
}

void boton(int bx1, int by2, int ancho, int alto){
  rectMode(CENTER);
  //textFont(texto);
  fill (170);
  stroke(49,160,255);
  rect (bx1, by2, ancho, alto);
 
}
