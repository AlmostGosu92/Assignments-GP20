int ballSize = 30;
PVector pos;
PVector dir;



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
}

void mouseReleased() {
	pos.x = mouseX;
	pos.y = mouseY;	
}

