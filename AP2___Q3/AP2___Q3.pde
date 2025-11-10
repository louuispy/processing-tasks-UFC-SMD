// QUESTÃO 3

// AP2


boolean rON, gON, bON;
int r, g, b;

void setup() {
  size(800, 800);
  r = 0;
  g = 0;
  b = 0;
}

void draw() {
  background(r, g, b);
  
  rectMode(CENTER);
  
  fill(r, 0, 0);
  rect(200, height/2, 100, 100);
  
  fill(0, g, 0);
  rect(400, height/2, 100, 100);
  
  fill(0, 0, b);
  rect(600, height/2, 100, 100);

  if (rON == true) {
    r = 255;
  } else {
    r = 0;
  }

  if (gON == true) {
    g = 255;
  } else {
    g = 0;
  }

  if (bON == true) {
    b = 255;
  } else {
    b = 0;
  }
}



void keyPressed() {
  if (key == '1') {
    rON = !rON;
  } else if (key == '2') {
    gON = !gON;
  } else if (key == '3') {
    bON = !bON;
  } else if (key == '0') {
    rON = false;
    gON = false;
    bON = false;
  }

  if (rON && !gON && !bON) {
    println("R:true G:false B:false -> Vermelho");
  } else if (rON && gON && !bON) {
    println("R:true G:true B:false -> Amarelo");
  } else if (rON && !gON && bON) {
    println("R:true G:false B:true -> Magenta");
  } else if (!rON && gON && bON) {
    println("R:false G:true B:true -> Ciano");
  } else if (!rON && gON && !bON) {
    println("R:false G:true B:false -> Verde");
  } else if (!rON && !gON && bON) {
    println("R:false G:false B:true -> Azul");
  } else if (!rON && !gON && !bON) {
    println("R:false G:false B:false -> Preto");
  } else if (rON && gON && bON) {
    println("R:true G:true B:true -> Branco");
  }
}
