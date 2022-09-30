class Caidos{
PImage c1;
float cx, cy, cantam ,caltam, cvel;


Caidos(){
cx = random(cantam/2, width/2);
cy = random(-height/2, -caltam);
cantam = 70;
caltam = 80;
cvel = random(1, 3);
c1 = loadImage("caida4.png");
}

Caidos(float cny){
cx = cny;
cy = random(-height/2, -caltam);
cantam = 70;
caltam = 80;
cvel = random(1, 3);
c1 = loadImage("caida4.png");
}

void dibujarCaidos(){
image(c1, cx, cy, cantam, caltam);
mover ();
}
void mover(){
if (cy>height+caltam){
cy = random(-height/2, -caltam);
cvel = random(1, 5);
}
cy += cvel;
}
}
