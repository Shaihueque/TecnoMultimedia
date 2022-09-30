class Fondo {
PImage f;
int fy;
int miFondo;

Fondo (){
fy = -height;
f = loadImage("cielo1.jpg");
}
void dibujarFondo(){
image (f, 0, fy);
mover();
}
void mover(){
if (fy<0){
fy ++;
}else {
fy = -height;
}

}
}
