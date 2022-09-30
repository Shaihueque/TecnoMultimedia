class Personaje{
PImage s1;
int sx;
int sy;
int antam;
int altam;
//float ax,ay;

Personaje(){
sx = width/2;
sy = height-125;
antam = 100;
altam = 125;
s1 = loadImage("super3.png");
}
void dibujarPersonaje(){
image(s1, sx, sy, antam, altam);
}
void moverPersonaje(int tecla){
if (tecla==LEFT && sx>0){
  sx -= 3;
}
if (tecla == RIGHT && sx<width-antam){
  sx += 3;
}
}
}
