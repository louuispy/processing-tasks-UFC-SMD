// QUESTAO 3

int estadoVeiculo = 0;
boolean pedestreVerde = false;

void setup(){
  size(400, 300);
}

void draw(){
  noStroke();
  background(200, 200, 200);
  fill(100, 100, 100);
  
  //semaforo veículo
  ellipse(100, 50, 50, 50);
  ellipse(100, 120, 50, 50);
  ellipse(100, 190, 50, 50);
  
  //semaforo pedestre
  ellipse(300, 120, 50, 50);
  ellipse(300, 190, 50, 50);
  
  if (estadoVeiculo == 0){
    fill(255, 0, 0);
    ellipse(100, 50, 50, 50);
    
    fill(0, 200, 0);
    ellipse(300, 190, 50, 50);
    
  } else if (estadoVeiculo == 1){
    fill(255, 255, 0);
    ellipse(100, 120, 50, 50);
    
    fill(255, 0, 0);
    ellipse(300, 120, 50, 50);
    
  } else if (estadoVeiculo == 2){
    fill(0, 200, 0);
    ellipse(100, 190, 50, 50);
    
    fill(255, 0, 0);
    ellipse(300, 120, 50, 50);
  }
};

void keyPressed(){
 if (key == '1') {
   estadoVeiculo = 0;
   pedestreVerde = true;
   println("Veículos: Vermelho | Pedestre: Verde");
 } else if (key == '2') {
   estadoVeiculo = 1;
   pedestreVerde = false;
   println("Veículos: Amarelo | Pedestre: Vermelho");
 } else if (key == '3') {
   estadoVeiculo = 2;
   pedestreVerde = false;
   println("Veículos: Verde | Pedestre: Vermelho");
 };
}
