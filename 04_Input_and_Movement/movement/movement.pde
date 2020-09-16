
PVector pos;
PVector dir;
float speed = 1;
float acc = 0.1;

void setup()
{
  size(640,480);
  pos = new PVector(width * 0.5, height * 0.5);
  dir = new PVector(0, 0);
  ellipseMode(CENTER);
}

void draw() {
	background(50, 166, 240);
		if (moveLeft){
			dir.x = -1;
			pos.x += dir.x * speed;
		}
		if (moveRight){
			dir.x = 1;
			pos.x += dir.x * speed;
		}
		if (moveUp){
			dir.y = -1;
			pos.y += dir.y * speed;
		}
		if (moveDown){
			dir.y = 1;
			pos.y += dir.y * speed;
		}

		println("speed: "+speed);
		speed += acc;

/*	  if (keyPressed) {
	    pos.x += dir.x;
	    pos.y += dir.y;
	    pos = pos.mult(speed);
	}*/

	ellipse(pos.x, pos.y, 20, 20);
}

