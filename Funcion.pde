void ilusion (){
for (int f = 0; f<cant+1; f+=1) {
    for (int c = 0; c<cant+1; c+=1) {
       
      fill(color1);
      stroke(100);
      strokeWeight(10);
      rect(c * tam, f * tam, tam, tam);
      fill(color2);
      stroke(color2);
      strokeWeight (1);
      ellipse(c * tam, f * tam, radio, radio);
    }
}
}
