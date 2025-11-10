boolean jogando = true;
int pontos = 0;
float posX;
float posY;
int inicioRodada;
float tempoLimite = 2000;
int tempoInicioJogo;
int tempoTotal;

void setup() {
  size(1000, 1000);
  posX = random(850);
  posY = random(850);
  inicioRodada = millis();
  tempoInicioJogo = millis();
}

void draw() {
  background(0);

  if (jogando) {
    fill(255);
    rect(posX, posY, 150, 150);

    if (millis() - inicioRodada > tempoLimite) {
      jogando = !jogando;
      tempoTotal = millis() - tempoInicioJogo;
    }

    textSize(40);
    text("Pontuação atual: " + pontos, 20, 50);
  } else {
    background(0);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("Pontuação total: " + pontos, height/2, width/2);
    text("Tempo total: " + tempoTotal + "ms", height/2, width/1.5);
  }
}

void mousePressed() {
  if (mouseX > posX && mouseX < posX+150 && mouseY > posY && mouseY < posY+150) {
    pontos ++;
    tempoLimite = tempoLimite * 0.9;
    posX = random(850);
    posY = random(850);
    inicioRodada = millis();
  } else {
    jogando = false;
    tempoTotal = millis() - tempoInicioJogo;
  }
}
