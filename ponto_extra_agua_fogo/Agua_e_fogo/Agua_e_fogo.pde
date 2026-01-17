int [][] matriz = new int [5][5];

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  for (int y = 0; y < matriz.length; y += 1) {
    for (int x = 0; x < matriz[y].length; x += 1) {
      if ((y + x)%2 == 0) {
        desenhoFogo(y*100+(100/2), x*100+(100/2), 20);
      } else {
        desenhoAgua(y*100+(100/2), x*100+(100/2), 20);
      }
    }
  }
}


void desenhoAgua(int x, int y, float tamanho) {
  fill(0, 0, 100);
  rect(x - (tamanho*2.5), y-(tamanho*2.5), tamanho*5, tamanho*5);

  // general quad
  fill(0, 50, 200);
  quad(
    x, y - tamanho * 2.5,
    x - tamanho * 2.5, y,
    x, y + tamanho * 2.5,
    x + tamanho * 2.5, y
    );

  // arc
  fill(65, 107, 223);
  arc(x + tamanho * 2.5, y + tamanho * 2.5, tamanho, tamanho, radians(180), radians(270));
  arc(x - tamanho * 2.5, y + tamanho * 2.5, tamanho, tamanho, radians(270), radians(360));
  arc(x - tamanho * 2.5, y - tamanho * 2.5, tamanho, tamanho, radians(0), radians(90));
  arc(x + tamanho * 2.5, y - tamanho * 2.5, tamanho, tamanho, radians(90), radians(180));

  // triangle
  fill(62, 164, 240);
  triangle(
    x, y - tamanho * 1.5,
    x - tamanho / 2, y,
    x + tamanho / 2, y
    );

  // ellipses
  fill(62, 164, 240);
  ellipse(x, y + tamanho * 0.5, tamanho * 2, tamanho * 2);

  fill(0, 255, 255);
  ellipse(x, y + tamanho * 0.5, tamanho, tamanho);

  fill(200, 255, 255);
  ellipse(x, y + tamanho * 0.5, tamanho / 2, tamanho / 2);
}

void desenhoFogo(int x, int y, float tamanho) {
  fill(100, 0, 0);
  rect(x - (tamanho*2.5), y-(tamanho*2.5), tamanho*5, tamanho*5);

  // general ellipse
  fill(255, 50, 0);
  ellipse(x, y, tamanho*5, tamanho*5);

  // arc
  fill(250, 100, 10);
  arc(x + tamanho * 2.5, y + tamanho * 2.5, tamanho, tamanho, radians(180), radians(270));
  arc(x - tamanho * 2.5, y + tamanho * 2.5, tamanho, tamanho, radians(270), radians(360));
  arc(x - tamanho * 2.5, y - tamanho * 2.5, tamanho, tamanho, radians(0), radians(90));
  arc(x + tamanho * 2.5, y - tamanho * 2.5, tamanho, tamanho, radians(90), radians(180));


  // triangles
  fill(255, 154, 0);

  triangle(
    x, y - (tamanho*1.5),
    x - (tamanho/2), y,
    x + (tamanho/2), y
    );

  triangle(
    x - (tamanho/2), y - (tamanho),
    x - (tamanho), y,
    x, y
    );

  triangle(
    x + (tamanho/2), y - (tamanho),
    x, y,
    x + (tamanho), y
    );

  // arc
  arc(x, y, tamanho*2, tamanho*2, radians(0), radians(180));

  // ellipse
  fill(255, 206, 0);
  ellipse(x, y + (tamanho/2), tamanho, tamanho);

  fill(255, 240, 100);
  ellipse(x, y + (tamanho*0.7), tamanho/2, tamanho/2);
}
