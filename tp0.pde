//Nombre: Julian Jara Aguirre
size (400,400);

//Fondo
noStroke();
fill(#20EDF2);
rect(0,0,400,250);
fill(#2BED2C);
rect(0,250,400,200);

//Edificio
stroke(1);
fill(#E3CD95);
rect(100, 150, 100, 100 );
rect(200,150, 150, 100);
stroke(1);
fill(#AF861C);
triangle(100, 150, 200, 150, 150, 100);
quad(150,100, 300,100, 350, 150, 200,150);

//Puerta 
fill(#897745);
rect(130, 205, 30, 45);

//Ventana
fill(#C4EAED);
rect(245, 185, 60, 30);
line (275, 185, 275,215);
line(245, 200,305, 200);

//Sol
fill(#F5FA05);
ellipse(50,50, 50,50);

//Cruz con lineas
strokeWeight(3);
line(150,100,150,50);
line(130,70,170,70);
