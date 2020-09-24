float deltaTime;
long time;
int numberOfCharacters = 100;
Character characters[];

void setup() {

	size(640, 480);
	ellipseMode(CENTER);

	start();
}

void start() {
	characters = new Character[numberOfCharacters];

	for(int i = 0; i < characters.length; i ++) {

		if (i == 0) {
			characters[i] = new Zombie();
		}
		else {
			characters[i] = new Human();
		}

	}
}

void draw() {

clearBackground();

	long currentTime = millis();
	deltaTime = (currentTime - time) * 0.001f;

	for (int i = 0; i < characters.length; i++) {

		for (int j = characters.length -1; j > i; j--) {

		characters[i].isZombie = roundCollision(characters[i].position.x,
			characters[i].position.y,
			characters[i].size/2,

			characters[j].position.x,
			characters[j].position.y,
			characters[j].size/2);
		
		if (characters[i].isZombie && characters[i] instanceof Human) {
			characters[i] = new Zombie(characters[i].position.x,
			 characters[i].position.y,
			 characters[i].velocity.x,
			 characters[i].velocity.y);
		}
		}


		characters[i].update();
		characters[i].draw();
	}

	time = currentTime;
}

void clearBackground() {

	fill(255, 255, 255);
	rect(0, 0, width, height);
}

void gameOver() {

	filter(GRAY);
	fill(0);
	textSize(32);
	textAlign(CENTER,CENTER);
	text("GAME OVER", width/2, height/2 -100);
	textSize(16);
	text("Everyone is (un)dead", width/2, height/2);
	text("Press 'R' to restart", width/2, height/2 + 32);
}