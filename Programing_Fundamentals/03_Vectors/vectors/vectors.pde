int ballSize = 30;
boolean travel;
PVector pos;
PVector dir;
float speed = 0.05;



void setup(){
	size(512, 512);
	pos = new PVector(width * 0.5, height * 0.5);
}

void draw(){
	background(128, 128, 128);
	ellipse(pos.x, pos.y, ballSize, ballSize);

	if (mousePressed){
		line(pos.x, pos.y, mouseX, mouseY);
	}

	if(travel){
		pos.x += dir.x;
		pos.y += dir.y;
	}

	if(pos.x <= ballSize * 0.5 || pos.x >= width - ballSize * 0.5){
		dir.x = dir.x * - 1;
	}

	if(pos.y <= ballSize * 0.5 || pos.y >= height - ballSize * 0.5){
		dir.y = dir.y * - 1;
	}

	
}

void mouseReleased() {

	dir = new PVector(mouseX - pos.x, mouseY - pos.y);
	dir = dir.mult(speed);

	travel = true;
}

