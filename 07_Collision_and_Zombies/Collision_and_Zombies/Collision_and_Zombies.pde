float deltaTime;
long time;
int numberOfCharacters = 10;
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
			characters[i].becomeZombie();
		}
		else {
			characters[i].becomeHuman();
		}

	}
}

void draw() {

	long currentTime = millis();
	deltaTime = (currentTime - time) * 0.001f;

	for (int i = 0; i < characters.length; i++) {

		isZombie = roundCollision(characters[i].position.x,
			characters[i].position.y,
			characters[i].size/2,
			characters[i].position.x,
			characters[i].position.y,
			characters[i].size/2);
	}

	for (int i = 0; i < characters.length; i++) {
		if (isZombie) {
			character.becomeZombie();
		}
	}
}