// LISTA 4 - FUNÇÕES

// QUESTÕES 1 A 10

// ===========================================

//Exercício 1 - O Sistema de Recompensa (XP).
//Crie uma função chamada calcularNovoXP que recebe o XP atual do jogador e a experiência ganha 
//em uma missão. Ela deve retornar a nova soma (int), mas com uma regra: o valor máximo permitido 
//é 999. Se a soma ultrapassar esse teto, a função deve retornar exatamente 999;

//objetivo: praticar a criação de funções com retorno de valor (int) e a aplicação de limites 
//lógicos em mecânicas de jogos ;

//contexto: desenvolvimento de sistemas de progressão para rpgs,
//onde o acúmulo de experiência precisa ser controlado para evitar que o
//personagem "quebre" o equilíbrio do sistema de níveis.

//void setup(){
//  calcularNovoXP(int(random(0, 10000)), int(random(0, 10000)));
//}

//int calcularNovoXP(int xpAtual, int xpMissao){
//  int soma = 0;
//  soma = xpAtual + xpMissao;
//  if (soma > 999){
//    soma = 999;
//  }
//  println("Experiência: ", soma);
  
//  return soma;
//}

// ===========================================

//Exercício 2 - Interface de Combate (HP). 
//Escreva uma função que recebe o valor de vida atual (0 a 100) e a 
//largura total disponível na interface. 
//Ela deve retornar um valor float que representa a largura exata que o 
//retângulo da barra de vida deve assumir naquele momento para ser proporcional 
//ao status do jogador;

//objetivo: aplicar o mapeamento de variáveis de estado para dimensões visuais 
//através de funções com retorno de ponto flutuante ;

//contexto: design de interfaces de usuário (hud) reativas que fornecem feedback visual 
//imediato sobre a integridade do avatar em tempo real.

//float larguraTotalDisponivel = 100;
//float larguraVida = barraHP(int(random(0,100)), larguraTotalDisponivel);

//void setup(){
//  size(500, 500);
//}

//void draw(){
//  fill(0);
//  rect(20, 20, larguraTotalDisponivel, 20);
  
//  fill(0, 200, 90);
//  rect(20, 20, larguraVida, 20);
//}

//float barraHP(int valorVidaAtual, float larguraTotalDisponivel){
//  float vidaFinal = (valorVidaAtual/100.0) * larguraTotalDisponivel;
//  println("Seu HP no momento é: ", vidaFinal,"/",larguraTotalDisponivel);
  
//  return vidaFinal;
//}

// ===========================================

//Exercício 3 - Detector de Zona Interativa (Trigger). 
//Desenvolva uma função booleana chamada estaNoAlcance que recebe as coordenadas do jogador, 
//as coordenadas de um item e um raio de interação. 
//A função deve retornar true apenas se a distância entre eles (use dist()) for menor que o raio 
//informado;

//objetivo: utilizar tipos de retorno boolean para abstrair verificações de 
//interatividade espacial ;

//contexto: validação de áreas de interatividade em protótipos de jogos, 
//simulando gatilhos de proximidade para abrir portas, conversar com npcs ou 
//coletar itens no cenário.

//int posXJogador = int(random(0,100));
//int posYJogador = int(random(0,100));
//int posXItem = int(random(0,100));
//int posYItem = int(random(0,100));
//float raio = 50;

//void setup(){
//  estaNoAlcance(posXJogador, posYJogador, posXItem, posYItem, raio);
//  println("Pos X Jogador: ", posXJogador,"\nPos Y Jogador: ", posYJogador,"\nPos X Item: ", posXItem,"\nPos Y Item: ", posYItem,"\nRaio: ", raio);
//}

//boolean estaNoAlcance(int coordXJogador, int coordYJogador, int coordXItem, int coordYItem, float raioInteracao){
//  println(dist(coordXJogador, coordYJogador, coordXItem, coordYItem) < raioInteracao);
//  return (dist(coordXJogador, coordYJogador, coordXItem, coordYItem) < raioInteracao);
//}

// ===========================================

//Exercício 4 - Avatar Parametrizado: O Herói Modular. 
//Crie um procedimento void desenharAvatar (exemplo o Kirby simples com círculos e arcos)
//que recebe como parâmetros a posição, o tamanho e uma tonalidade de cinza (int). 
//O personagem deve ser composto por pelo menos 4 formas geométricas que mantenham a 
//proporção entre si, usando e como ponto de referência central;

//objetivo: exercitar o encapsulamento de desenhos complexos e o uso de 
//coordenadas relativas para garantir o reuso do módulo em qualquer parte da tela ;

//contexto: criação de bibliotecas de assets onde um único comando permite povoar o cenário com 
//figuras de escalas e tons variados de forma eficiente.

//int xAleatorio = int(random(50, 400));
//int yAleatorio = int(random(50, 400));
//float tamanhoAleatorio = random(0, 300);
//int corCinzaAleatoria = int(random(60, 200));

//void setup(){
//  size(500, 500);
//  noStroke();
//}


//void draw(){
//  //// Desenho original para encontrar proporções 
//  // pes
//  fill(200, 0, 0);
//  ellipse(250 - 30, 250+40, 75, 25); // posicao - (tamanho * 0.3), posicao + (tamanho * 0.4), (tamanho / 4)*3, tamanho/4
//  ellipse(250 + 30, 250+40, 75, 25); // posicao + (tamanho * 0.3), posicao + (tamanho * 0.4), (tamanho / 4)*3, tamanho/4
  
//  // corpo
//  fill(225, 100, 180); // rosa
//  ellipse(250, 250, 100, 100); // tamanho, tamanho
  
//  // bracos
//  ellipse(250 - 30, 250, 75, 50); // posicao - (tamanho * 0.3), posicao, (tamanho / 4)*3, tamanho/2
//  ellipse(250 + 30, 250, 75, 50); // posicao + (tamanho * 0.3), posicao, (tamanho / 4)*3, tamanho/2

//  // bochecha
//  fill(225, 0, 100);
//  ellipse(250 - 25, 250 + 5, 10, 5); // posicao - (tamanho / 4), posicao + (tamanho / 20), tamanho / 10, tamanho / 20
//  ellipse(250 + 25, 250 + 5, 10, 5); // posicao + (tamanho / 4), posicao + (tamanho / 20), tamanho / 10, tamanho / 20
  
//  // boca e olhos
//  fill(0);
//  arc(250, 250, 10, 25, radians(0), radians(180)); //tamanho/10, tamanho/4
  
//  ellipse(250 - 10, 250 - 10, 10, 25); // posicao - (tamanho / 10), posicao - (tamanho / 10), tamanho / 10, tamanho / 4
//  ellipse(250 + 10, 250 - 10, 10, 25); // posicao + (tamanho / 10), posicao - (tamanho / 10), tamanho / 10, tamanho / 4
  
//  fill(255);
//  ellipse(250 - 10, 250 - 20, 5, 10); // posicao - (tamanho / 10), posicao - (tamanho / 5), tamanho / 20, tamanho / 10
//  ellipse(250 + 10, 250 - 20, 5, 10); // posicao + (tamanho / 10), posicao - (tamanho / 5), tamanho / 20, tamanho / 10
  
//  background(0);
//  desenharAvatar(xAleatorio, yAleatorio, tamanhoAleatorio, corCinzaAleatoria);
//}

//void desenharAvatar(int posicaoX, int posicaoY, float tamanho, int tonalidadeCinza){
//  // pes
//  fill(tonalidadeCinza - 50);
//  ellipse(posicaoX - (tamanho * 0.3), posicaoY + (tamanho * 0.4), (tamanho / 4)*3, tamanho/4);
//  ellipse(posicaoX + (tamanho * 0.3), posicaoY + (tamanho * 0.4), (tamanho / 4)*3, tamanho/4);
  
//  // corpo
//  fill(tonalidadeCinza + 25);
//  ellipse(posicaoX, posicaoY, tamanho, tamanho);
  
//  // bracos
//  ellipse(posicaoX - (tamanho * 0.3), posicaoY, (tamanho / 4)*3, tamanho/2);
//  ellipse(posicaoX + (tamanho * 0.3), posicaoY, (tamanho / 4)*3, tamanho/2);
  
//  // bochecha
//  fill(tonalidadeCinza - 25);
//  ellipse(posicaoX - (tamanho / 4), posicaoY + (tamanho / 20), tamanho / 10, tamanho / 20);
//  ellipse(posicaoX + (tamanho / 4), posicaoY + (tamanho / 20), tamanho / 10, tamanho / 20);
  
//  // boca
//  fill(0);
//  arc(posicaoX, posicaoY, tamanho / 10, tamanho / 4, radians(0), radians(180));
  
//  // olhos
//  ellipse(posicaoX - (tamanho / 10), posicaoY - (tamanho / 10), tamanho / 10, tamanho / 4);
//  ellipse(posicaoX + (tamanho / 10), posicaoY - (tamanho / 10), tamanho / 10, tamanho / 4);
  
//  // brilho dos olhos
//  fill(255);
//  ellipse(posicaoX - (tamanho / 10), posicaoY - (tamanho / 5), tamanho / 20, tamanho / 10);
//  ellipse(posicaoX + (tamanho / 10), posicaoY - (tamanho / 5), tamanho / 20, tamanho / 10);
//}
