void setup(){
  size(500, 500);
  background(0, 90, 200);
}

void draw(){
  noStroke();
  
  // yellow circle
  fill(242, 172, 75);
  ellipse(width/2, (height - height/3), width/2, height/2);
  
  // red circle
  fill(255, 80, 80);
  ellipse(width/2, height - (2*(height/3)), width/2, height/2);
  
  // arcs
  strokeWeight(3);
  fill(255, 241, 223);
  stroke(255, 241, 223);
  arc(width/2, height/3, width/2, height/1.98, radians(42), radians(138), CHORD);
  
  arc(width/2, 2*(height/3), width/2, height/2, radians(222), radians(318), CHORD);
  
  // small circles
  noStroke();
  
  fill(0, 90, 200);
  ellipse(width/2, height/2, width/6, height/6);
  
  fill(0);
  ellipse(width/2, height/2, width/10, height/10);
  
}
