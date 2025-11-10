// QUESTÃO 1
color bgColor, fillColor;

void setup(){
  size(500, 500);
  colorMode(HSB);
  bgColor = color(180, 45, 94);
  fillColor = color(100, 100, 220);
  
}

void draw(){
  noStroke();
  background(bgColor);
  fill(fillColor);
  ellipse(width/2, height/2, 300, 300);
  
  fill(bgColor);
  stroke(bgColor);
  strokeWeight(2);
  ellipse(width/2, height/2, 200, 200);
  arc(width/2, height/2, 300, 300, radians(225), radians(315));
  
  noStroke();
  fill(fillColor);
  ellipse(width/2, 125, 50, 50);
  rect(225, 125, 50, 125);
  ellipse(width/2, height/2, 50, 50);
}
