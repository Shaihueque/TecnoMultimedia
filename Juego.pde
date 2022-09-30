class Juego {
Fondo fondo;
Personaje p;
Caidos c;

Caidos [] caidos = new Caidos [4];

Juego() {
fondo = new Fondo();
c = new Caidos();
p = new Personaje();
for(int i=0;i<caidos.length; i++){
caidos[i] = new Caidos(20+i*height/5);
}
}
void display(){
fondo.dibujarFondo();
p.dibujarPersonaje();
c.dibujarCaidos();

for(int i=0;i<caidos.length; i++){
caidos[i].dibujarCaidos();
}
}
void moverPersonaje(int presionada){
p.moverPersonaje(presionada);
}
}
