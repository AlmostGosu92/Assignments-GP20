boolean rKeyDown;

void keyPressed() {
	if (key == 'r') {
		rKeyDown = true;
	}
}


void keyReleased() {
	if (key == 'r') {
		rKeyDown = false;
	}
}