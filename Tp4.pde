//Julian Jara Aguirre    n°legajo: 88362/1

Juego game;
void setup() {
  size(600, 600);
 game = new Juego();
}
void draw() {
  background(99, 172, 215);
  game.display();
 

  if (keyPressed) {
   game.moverPersonaje(keyCode);
  }
}

void mousePressed() {
}
