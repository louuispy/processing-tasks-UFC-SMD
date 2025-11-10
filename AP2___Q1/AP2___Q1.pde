// QUESTÃO 01

// AP1 - 2

color backgroundColor, color1, color2, color3;

void setup(){
  size(500, 500);
  colorMode(HSB);
  backgroundColor = color(250, 140, 255);
  color1 = color(255, 255, 0);
  color2 = color(0,255,140);
  color3 = color(200, 150, 100);
}

void draw(){
  noStroke();
  background(backgroundColor);
  
  fill(color1);
  arc(150, 350, 500, 500, radians(270), radians(360), PIE);
  
  fill(backgroundColor);
  arc(150, 350, 370, 370, radians(270), radians(360), PIE);
  
  fill(color2);
  arc(150, 350,  280, 280, radians(270), radians(360), PIE);
  
  fill(backgroundColor);
  arc(150, 350, 160, 160, radians(270), radians(360), PIE);
  
  fill(color3);
  ellipse(150, 350, 80, 80);
  
}
