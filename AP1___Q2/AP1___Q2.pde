// QUESTAO 2

int estadoVeiculo = 0;
boolean pedestreVerde = false;

void setup(){
  size(400, 300);
}

void draw(){

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
