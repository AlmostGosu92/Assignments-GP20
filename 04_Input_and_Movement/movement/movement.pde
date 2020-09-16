float x = 0;
float y = 0;
float v = 1;
float a = 0.5;
float deltaTime;
PVector pos;

void setup()
{
  size(640,480);
  pos = new PVector(width * 0.5, height * 0.5);
  ellipseMode(CENTER);
}

void draw() {
	background(50, 166, 240);
  if (moveLeft) {
    pos.x = pos.x - v * deltaTime;
    v = v + a * deltaTime;
  }
  if (moveRight) {
    pos.x = pos.x + v * deltaTime;
  }
  if (moveUp) {
    pos.y -= 2;
  }
  if (moveDown) {
    pos.y += 2;
  }


	ellipse(pos.x, pos.y, 20, 20);
}