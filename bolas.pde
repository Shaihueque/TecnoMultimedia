void bolas(float px, float py, float tam) {
noStroke();
  fill(114,215,240,150);
  ellipse (px, py, tam, tam);
  


}

void burbujas(){
for (int i=0; i<cant;i++){
  if(resta[i]){
 bolas(pos[i][0], pos[i][1], tam[i]);
 if(pos[i][1]>height+tam[i]){
   tam [i] = random(40,100);
   direcc [i] = random (1,5);
   pos [i][0] = random (50,width-50);
   pos [i][1] = random(-100, 0);
    vidas =3;
 }
 if (pos[i][1]>height){
   vidas--;
   resta[i]=false;
 }
 if(vidas==0){
   estados="perdiste";
 }
 
 if(puntos==100){
 estados= "ganaste";
 }

}
pos[i][1] += direcc[i];
}
}
