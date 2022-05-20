/* Julian jara Aguirre
Espero que cumpla con todo, se que se puede simplificar mas el codigo.
Saludos */

PImage a1, as1, t1, tri1, ale, asc, furi, tri, tem, fu1/* boa, boc, bor, bov, bovi*/;
PFont titulo, creditos;
int mov1= 2 , mov2 = 20;
float py1 = -600, py2 = -1200, py3 = -1800, py4 = -2400, py5 = -3000;
float f1 = 15, f2 = 0, f3 = 0, f4 = 0, f5 =0, posxr, posyr=0;
int pxf = 0, pyf = 0, pxtx = 0, pxf1 = 0, pxtx1 = 0, px1 = 0, pyt =605, pytx=605, tam=50;
color colorZona ;
boolean presionado = false;

void setup (){
  size(1000,600);
  a1 = loadImage("a1.png");
  as1 = loadImage("as1.png");
  t1 = loadImage("t1.png");
  tri1 =loadImage("tri1.png");
  ale = loadImage("ale.png");
  asc = loadImage("asc.png");
  furi = loadImage("furi.png");
  tem = loadImage("tem.png");
  tri = loadImage("tri.png");
  fu1= loadImage("fu1.png");
  /*boa =loadImage("boa.png");
  boc =loadImage("boc.png");
  bor =loadImage("bor.png");
  bov =loadImage("bov.png");
  bovi =loadImage("bovi.png");*/
  
  titulo = createFont("Carton_Six.ttf", 100);
  creditos = createFont("SansSerif.bold-48.vlw", 100);
  
}

void draw (){
  println(frameCount);


  if(frameCount ==0 || frameCount <=159){
    background (0);
noStroke();
fill(36,164,79);
rect (0, py1, 200,600);
fill(220,50,33);
rect (200,py2, 200,600);
fill(239,600,28);
rect (400,py3, 200,600);
fill(146,37,128);
rect (600,py4, 200,600);
fill(3,118,185);
rect (800,py5, 200,600);

  if (py1<0 ){
  py1 = py1+ 20;
  } 
  if (py2<0){
  py2 = py2+ 20;
  } 
  if (py3<0){
  py3 = py3+ 20;
  } 
  if (py4<0){
  py4 = py4+ 20;
  } 

  if (py5<0){
  py5 = py5+ 20;
  } 
  if (py5 == 0){
image(ale,103,f1,750,600);
image(asc,51,f2,750,600);
image(furi,0,f3,1010,600);
image(tem,-1,f4,1008,600);
image(tri,250,f5,750,600);
fill(255);
  textFont (titulo);
  textAlign(CENTER, CENTER);
  text ("I N T E N S A M  E N T E", width/2, 35);
  }
}

  if(frameCount >= 160 && frameCount < 893){
   
   // background (245,193,47);
   fill(245,193,47);
   rect (0,0,1000,300);
   fill(32,98,11);
   rect (0,300,1000,300);
    image (a1, pxf-450,pyf+50, 300,200);
    image (as1, pxf-450,pyf+350,300,200);
    fill(255);
     textSize(20);
    text("Alegria", pxtx-100, 150);
    text("Desagrado", pxtx-100, 450);
    if(frameCount > 160 && frameCount <= 1600){
      pxf = pxf + mov1;
      pxtx = pxtx + mov1;
    }else{
      pxf = 0 + mov1;
      pxtx = 0 + mov1;
    }
   
  
}
  if(frameCount >= 893 && frameCount <1625){
   
   fill(113,9,6);
   rect (0,0,1000,300);
   fill(100,42,145);
   rect (0,300,1000,300);
   image (fu1, pxf1-450,pyf+50, 300,200);
   image (t1, pxf1-450,pyf+350, 300,200);
    fill(255);
    textSize(20);
   text("Furia",pxtx1-100,150);
   text("Temor", pxtx1-100,450);
      pxf1= pxf1 + mov1;
      pxtx1 = pxtx1 + mov1;
  }
  if(frameCount > 1625 && frameCount<= 1980){
   fill(67,174,220);
   rect (0,0,1000,600);
   image (tri1, px1-450,pyf+50, 400,300);
    fill(255);
    textSize(20);
   text("Tristeza",px1-150,150);
      px1= px1 + mov1;
      px1 = px1 + mov1;
}
if(frameCount>=1981 && frameCount<=2448){
  background(0);
  fill(255);
  textFont(creditos);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("\nBanda sonora compuesta por" + "\n Michyael Giacchino", width/2, pyt);
 
  text("\n Guionistas ", width/2, pyt+55);
  text( "\n Pete Doctore" + "\n Meg LeFavue" + "\n Josh Cooley", width/2, pyt+125);
  
  textSize(25);
  text( "\n Director" + "\n Pete Doctore" , width/2, pyt+250);
 
  pyt= pyt-mov1;

}
if(frameCount>=2449 && frameCount <= 4841){
  background(0);
  fill(255);
  textFont(creditos);
  textAlign(CENTER, CENTER);
  textSize(28);
  
  text("\nEmpresas participantes ", width/2, pytx);
  
  text("Walt Disney Pictures" + "\n Pixar Animation Studios", width/2, pytx+100);
  
  pytx = pytx-mov1;
}

if(frameCount >=0){
  fill (colorZona);
  rect(800,525,tam,tam);
  
  if(presionado == false){
    if( mouseX>800 && mouseX<800+tam && mouseY >525 && mouseY < 525+tam){
      colorZona = color(255,0,0,70);
    }else{
      colorZona = color(255,0,0,0);
  
}
}
}
}

void mouseClicked(){
  if(presionado == false){
    if( mouseX>800 && mouseX<800+tam && mouseY >525 && mouseY < 525+tam){
      colorZona =  color(random(0,255),random(0,255),random(0,255),50);
      presionado = true;
      frameCount = 0;
      py1 = -600;
      py2 = -1200;
      py3 = -1800;
      py4 = -2400;
      py5 = -3000;
    }else{
      colorZona = color(255,0,0,0);
      presionado = false;
    }
  }
}
