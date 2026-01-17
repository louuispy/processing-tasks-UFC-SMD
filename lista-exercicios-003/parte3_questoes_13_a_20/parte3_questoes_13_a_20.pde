// PARTE 3: TEXTURAS E SUPERFÍCIES

// ===============================================

//14 – O Mosaico de Tons. Crie uma grade de quadrados que preencha toda a tela (sem
//espaços vazios). A cor de preenchimento de cada quadrado deve ser um tom de cinza
//aleatório (random(255)). O resultado deve lembrar um mosaico de pedras ou uma textura
//de ruído digital.
//Objetivo: Preencher uma superfície 2D completa e aplicar variações locais independentes
//em cada célula.

//void setup(){
//  size(500, 500);
//}

//void draw(){
//  noStroke();
//  for (int y = 0; y < height; y += 20){
//    for (int x = 0; x < width; x += 20){
//      fill(random(0, 255));
//      rect(x, y, 20, 20);
//    }
//  }
//}

// ===============================================

//15 – Piso de Xadrez. Desenhe um grid de quadrados que preencha toda a tela. A cor deve
//alternar como num tabuleiro de xadrez. (Dica Lógica: some o índice da linha com o da
//coluna; se o resultado for par, pinte de preto, se ímpar, de branco).
//Objetivo: Aplicar lógica matemática (soma de índices e paridade) para criar padrões
//alternados em grades.


//size(800, 800);

//for (int y = 0; y < height; y += 1) {
//  for (int x = 0; x < width; x += 1) {
//    if ((y + x) % 2 == 0) {
//      fill(255);
//      rect(x*100, y*100, 100, 100);
//    } else {
//      fill(0);
//      rect(x*100, y*100, 100, 100);
//    }
//  }
//}

// ===============================================

//16 – Pisos e Azulejos. Desenhe um grid que preencha a tela inteira. Em vez de mudar a
//cor, mude a forma. Para decidir o que desenhar, some o número da linha com o número
//da coluna (i + j):
//• Se a soma for par, desenhe um quadrado;
//• Se a soma for ímpar, desenhe um círculo.


//size(500, 500);

//background(255);

//noStroke();
//for (int y=0; y<width; y++) {
//  for (int x=0; x<height; x++) {
//    if ((x+y)%2 == 0) {
//      fill(#003082);
//      rect(x*50, y*50, 50, 50);
//    } else {
//      fill(#FFC917);
//      ellipse((x*50)+25, (y*50)+25, 50, 50);
//    }
//  }
//}

// ===============================================

//17 – O Tapete Colorido. Crie uma grade densa de pequenos retângulos. Use a posição X
//para controlar a quantidade de Vermelho e a posição Y para controlar a quantidade de
//Azul. O resultado será um tapete com um degradê suave em duas
//direções. Objetivo: Controlar canais de cor independentemente usando coordenadas X e
//Y simultâneas.

//size(500, 500);
//noStroke();
//for (int y = 0; y<255; y++){
//  for (int x = 0; x<255; x++){
//    fill(y, 0, x);
//    rect(x*2, y*2, 2, 2); // x*2 e y*2 pq estamos dobrando a escala de 255 para aprox. 500, pra caber no size
//    // os tamanhos são 2 justamente por conta dessa escala dobrada
//  }
//}

// ===============================================

//18 – Pixel Art Triangular. Utilize laços aninhados para desenhar uma "escada" de
//quadrados na tela. A lógica é: na primeira linha desenhe 1 quadrado, na segunda desenhe
//2, e assim por diante. Dica Lógica: O laço interno (colunas) não deve ir até o final da tela,
//ele deve parar quando atingir o número da linha atual (j <= i).
//Objetivo: Compreender laços dependentes (onde o limite de repetição interno depende
//do estado atual do laço externo) para gerar formas geométricas.

//size(500,500);

//background(0);
//for (int y=0; y<width; y++){
//  for (int x=0; x<(y+1); x++){
//    fill(y*10, 200, 255-y); // gradiente do ciano para laranja
//    rect(x*10, y*10, 10, 10);
//  }
//}

// ===============================================

//19 – Labirinto Gerativo (Truchet). Divida a tela em células quadradas. Em cada célula, o
//computador deve jogar uma moeda (random): se der cara, desenha uma linha diagonal \;
//se der coroa, desenha /. O resultado final parece um labirinto complexo e conectado.
//Objetivo: Gerar complexidade visual combinando grade rígida com decisões aleatórias
//locais.

//size(500, 500);

//// Cara = par | Coroa = ímpar

//for (int cara = 0; cara < width; cara += 1){
//  for (int coroa = 0; coroa < height; coroa += 1){
//    if (int(random(0,2))%2 == 0){
//      line(coroa*10, cara*10, coroa*10+10, cara*10+10);  
//    } else {
//      line(coroa*10, cara*10+10, coroa*10+10, cara*10);
//    }
//  }
//}
