void setup(){
  size(300, 400);
  background(222, 202, 169);
  noStroke();
}

void draw(){
  
  // red
  fill(212, 82, 82);
  ellipse(150, 250, 100, 100);
  
  // brown arc
  fill(186, 152, 96);
  arc(150, 150, 200, 200, radians(270), radians(450), CHORD);
  
  // black circle
  fill(50, 50, 50);
  ellipse(150, 150, 100, 100);
  
  // white arc
  fill(255, 240, 240);
  arc(150, 250, 200, 200, radians(90), radians(270), CHORD);
  
  // red arc
  fill(212, 82, 82);
  arc(150, 250, 100, 100, radians(90), radians(270), CHORD);
}
