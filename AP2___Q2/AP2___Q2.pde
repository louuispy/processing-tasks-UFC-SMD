// QUESTÃO 2

// AP2

boolean rON, gON, bON;
int r, g, b;

void setup() {
  size(700, 700);
}

void draw() {
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
    println("R:true G:false B:false -> Preto");
  } else if (rON && gON && bON) {
    println("R:true G:true B:true -> Branco");
  }
}
