int tam;
int cant = 8;
int radio = 13;
color color1 = color(0);
color color2 = color(255);

void setup() {
  size (400, 400);
}

void draw () {
  background (255);
tam = width/cant;
ilusion();
 
   }
  void mouseMoved() {
    color1 = round(map(mouseY, 0, height, 0, 255));
    if (color1 >=120) {
      color2 = 0;
    } else {
      color2= 255;
    }
  }
  
void mousePressed () {
  cant++;
}
void keyPressed(){
   cant = 8;
 }
