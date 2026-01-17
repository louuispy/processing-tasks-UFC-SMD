void setup() {
  size(400, 500);
  background(255, 182, 0);
}

void draw() {
  noStroke();

  fill(255);

  // triangulos brancos
  triangle(50, height/5, 125, height/10, width/2, height/5);
  triangle(50, height/5, 125, height*0.3, width/2, 100);

  triangle(50, height/5, width/2, height*0.4, 50, height*0.4);
  triangle(50, height*0.4, 200, height*0.4, width/2, 300);

  // triangulos cinzas
  //fill(150, 150, 150);
  triangle(width/2, height/5, height*0.55, 50, 350, height/5);
  triangle(width/2, height/5, height*0.55, height*0.3, 350, 100);

  triangle(
    125, height*0.3,
    width/2, 100,
    height*0.55, height*0.3);

  triangle(
    125, height*0.3,
    width/2, height*0.4,
    height*0.55, height*0.3);

  triangle(
    height*0.55, height*0.3,
    350, 100,
    350, 200);

  triangle(
    height*0.55, height*0.3,
    350, 200,
    height*0.55, 250);

  // triangulos pretos
  fill(0);
  triangle(
    width/2, height*0.4,
    height*0.55, height*0.3,
    height*0.55, height*0.5
    );

  triangle(
    width/2, height*0.4,
    height*0.55, 250,
    200, 300);

  triangle(
    200, 300,
    height*0.55, 250,
    height*0.55, 350
    );

  triangle(
    200, 300,
    height*0.55, 350,
    200, 400);

  triangle(
    200, 300,
    125, 250,
    125, 350
    );

  triangle(
    200, 300,
    125, 350,
    200, 400);
}
