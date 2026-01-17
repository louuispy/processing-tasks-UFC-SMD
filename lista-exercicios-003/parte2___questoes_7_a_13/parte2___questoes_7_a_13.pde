// Padrões Visuais Lineares

// Vamos usar a repetição para criar composições gráficas, relacionando a matemática com arte

// 7. Cerca de madeira:
// Desenhe linhas verticais lado a lado preenchendo toda a largura
// da tela, espaçadas por 15 pixels, simulando uma cerca. Use a variável do laço para
// controlar a posição X (line(x, 0, x, height)).

//void setup(){
//  size(300, 300);
//}

//void draw(){
//  for (int x = 0; x < width; x = x+15){
//      line(x, 0, x, height);
//  }
//}



// ==============================================================



// 8. Trilha de Pegadas:
// Desenhe pequenos círculos (pegadas) cruzando a tela horizontalmente no centro.
// Use uma condição (if) dentro do laço: se o passo for par,
// desenhe o círculo um pouco mais para cima; se for ímpar, um pouco mais para baixo,
// simulando o caminhar (pé esquerdo/pé direito).

//void setup() {
//  size(500, 500);
//}

//void draw() {
//  fill(0);
//  for (int x = 1; x < width; x ++) {
//    if (x % 2 == 1) {
//      ellipse(50*x, (height/2) - 50, 50, 50);
//    } else {
//      ellipse(50*x, (height/2) + 50, 50, 50);
//    }
//  }
//}



// ==============================================================



//9 – Amanhecer (Degradê). Preencha a tela com linhas horizontais de cima para baixo. A
//cor das linhas deve variar suavemente do azul escuro (no topo) para o laranja ou branco
//(na base), simulando um céu amanhecendo. Use a posição Y da linha para calcular a cor
//(sem usar funções automáticas de conversão).

//void setup() {
//  size(500, 500);
//}

//// cor laranja RGB: 255, 165, 0

//void draw() {
//  for (int y = 0; y < height; y++) {
//    for (int x = 0; x < width; x++) {
//      float cor = (float)y/height;
//      stroke(y, cor*200, 50-50*cor); //RGB
//      line(x, y, x, y);
//    }
//  }
//}



// ==============================================================



//10 – Efeito de Eco. Desenhe um círculo no centro da tela. Depois, desenhe outro maior,
//e outro maior, repetindo 10 vezes. Isso cria um efeito visual de ondas de rádio ou eco se
//expandindo. Use o índice do laço para aumentar o diâmetro.

//void setup() {
//  size(500, 500);
//}

//void draw() {
//  for (int escala = 0; escala <= 1000; escala += 50) {
//    noFill();
//    ellipse(height/2, width/2, escala, escala);
//  }
//}



// ==============================================================



//11 – Skyline (Silhueta de Cidade). Utilize um laço para desenhar retângulos lado a lado,
//alinhados na parte inferior da tela, representando prédios. A largura é fixa, mas a altura
//de cada prédio deve ser aleatória (random). Isso gerará uma silhueta de cidade diferente
//a cada execução.
//Objetivo: Introduzir variações aleatórias (random) dentro de uma estrutura rígida de
//repetição.

//void setup() {
//  size(500, 500);
//  noLoop();
//}

//void draw() {
//  background(255);
//  fill(0);
//  for (int x = 0; x <= 500; x += 50) {
//    int altura = int(random(100, 500));
//    rect(x, height - altura, 50, altura);
//  }
//}



// ==============================================================



//12 – O Fantasma (Transparência). Desenhe 20 círculos na mesma posição (mouse), todos
//do mesmo tamanho. Use o laço para desenhá-los com transparência (Alpha) muito baixa.
//Como eles são desenhados uns sobre os outros, o centro ficará sólido e as bordas suaves,
//criando um efeito "esfumaçado".

//Objetivo: Explorar a sobreposição visual e o canal Alpha para criar efeitos gráficos de
//acumulação

//void setup() {
//  size(500, 500);
//}

//void draw() {
//  background(255);
//  for (int i = 0; i <= 20; i++) {
//    noStroke();
//    fill(0, i);
//    ellipse(mouseX, mouseY, 80, 80);
//  }
//}

//13 – Túnel do Tempo. Desenhe quadrados concêntricos no centro da tela. Comece do
//maior para o menor. Alterne a cor da linha (stroke) entre duas cores vibrantes (ex: neon)
//a cada repetição, criando um efeito psicodélico de túnel.
//Objetivo: Praticar a alternância de estados (cor A/cor B) a cada iteração.

//int cor1 = color(255, 0, 255);
//int cor2 = color(0, 255, 0);

//void setup() {
//  size (500, 500);
//}

//void draw() {
//  rectMode(CENTER);
//  for (int passo = 1000; passo > 0; passo --) {
//    if (passo % 2 == 1) {
//      fill(cor1);
//      rect(width/2, height/2, passo*50, passo*50);
//    } else {
//      fill(cor2);
//      rect(width/2, height/2, passo*50, passo*50);
//    }
//  }
//}
