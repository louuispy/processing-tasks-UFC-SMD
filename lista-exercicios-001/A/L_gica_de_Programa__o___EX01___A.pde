// EXERCÍCIOS (LISTA 1) - PROCESSING | PROGRAMAÇÃO I

// EXERCÍCIO A)

void setup(){
  size(300, 400);
  noStroke();
}

void draw(){
  fill(#ebebeb);
  rect(0, 0, 300, 200);
  
  fill(#faaa99);
  triangle(
  300, 200,
  200, 100,
  100, 200
  );
  
  fill(#e86565);
  triangle(
  0, 200,
  100, 100,
  200, 200
  );
  
  fill(#7fc7c5);
  rect(0, 200, 300, 200);
  
  fill(#ffffff);
  triangle(
  300, 200,
  200, 300,
  100, 200
  );
  
  fill(#acf2f1);
  triangle(
  0, 200,
  100, 300,
  200, 200
  );
  
}
