// EXERCÍCIOS (LISTA 1) - PROCESSING | PROGRAMAÇÃO I

// EXERCÍCIO C)

void setup() {
  size(600, 800);
}

void draw() {
  background(255);
  
  // rect preto

  fill(0);
  noStroke();
  rect(250, 400, 250, 250);

  noFill();
  stroke(255, 0, 0);
  strokeWeight(5);
  rect(200, 350, 250, 250);
  
  // rect vermelho 
  
  fill(255, 0, 0);
  noStroke();
  rect(100, 200, 250, 250);
  
  noFill();
  stroke(0);
  strokeWeight(5);
  rect(150, 250, 250, 250);
}
