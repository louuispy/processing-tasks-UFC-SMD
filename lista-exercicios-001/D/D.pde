void setup() {
  size(600, 800);
  background(255);
}

void draw() {
  // pink and green draw
  fill(240, 120, 140);
  noStroke();
  ellipse(200, 200, 200, 200);
  rect(100, 200, 200, 200);

  fill(46, 161, 13);
  ellipse(200, 400, 200, 200);

  //red and black draw
  fill(0);
  rect(302, 200, 200, 400);

  fill(255, 0, 0);
  ellipse(402, 200, 200, 200);


  //blue and yellow draw
  fill(255, 201, 0);
  ellipse(402, 600, 200, 200);
  rect(200, 500, 200, 200);

  fill(0, 0, 255);
  ellipse(200, 600, 200, 200);
}
