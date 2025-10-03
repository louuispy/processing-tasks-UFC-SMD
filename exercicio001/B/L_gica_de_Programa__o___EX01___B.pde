// EXERCÍCIOS (LISTA 1) - PROCESSING | PROGRAMAÇÃO I

// EXERCÍCIO B)

void setup(){
 size(300, 400);
 noStroke();
}

void draw(){
  // primeira metade
  fill(#f5a453);
  rect(0, 0, 300, 200);
  
  fill(#ffffff);
  rect(0, 0, 300, 50);
  
  fill(#ffffff);
  triangle(
  0, 50,
  150, 200,
  300, 50
  );
  
  fill(#f5a453);
  triangle(
  100, 0,
  150, 50,
  200, 0
  );
  
  // segunda metade
  fill(#53a4f5);
  rect(0, 200, 300, 200);
  
  fill(0);
  rect(0, 350, 300, 50);
  
  fill(0);
  triangle(
  0, 350,
  150, 200,
  300, 350
  );
  
  fill(#53a4f5);
  triangle(
  100, 400,
  150, 350,
  200, 400
  );
}
