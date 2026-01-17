void setup(){
  size(400, 600);
  background(240, 220, 200);
  noStroke();
}

void draw(){
  // lef fig
  fill(0, 90, 210);
  arc(100, 200, 200, 200, radians(270), radians(450), CHORD);
  rect(100, 200, 100, 100);
  
  fill(50, 50, 50);
  rect(100, 300, 100, 200);
  
  // right
  fill(250, 180, 0);
  arc(200, 200, 200, 200, radians(270), radians(450), CHORD);
  
  fill(255, 0, 0);
  arc(200, 400, 200, 200, radians(270), radians(450), CHORD);
}
