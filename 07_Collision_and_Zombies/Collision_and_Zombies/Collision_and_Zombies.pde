
CharacterManager cm = new CharacterManager();


void setup() {

	size(640, 480);
	ellipseMode(CENTER);

	cm.createCharacters();

}


void draw() {

	clearBackground();

	for (int i = 0; i < cm.characters.length; i++) {
		
		for (int j = 0; j < cm.characters.length; j++) {

			if (i != j){

				boolean hasCollided = roundCollision(cm.characters[i].position.x,
					cm.characters[i].position.y,
					cm.characters[i].size / 2,

					cm.characters[j].position.x,
					cm.characters[j].position.y,
					cm.characters[j].size / 2);

				if (hasCollided && cm.characters[i].isZombie && cm.characters[j].isZombie == false) {
					
					//cm.zombieCollisionCheck(cm.characters[i], cm.characters[j]);
					
					cm.characters[j] = new Zombie(cm.characters[j].position.x, cm.characters[j].position.y,
					 cm.characters[j].velocity.x, cm.characters[j].velocity.y);
					

					/*else if (cm.characters[j].isZombie) {
						cm.characters[i] = new Zombie(cm.characters[i].x, cm.characters[i].y, 
							cm.characters[i].velocity.x, cm.characters[i].velocity.y);
					}*/


				}
			}
		}

		cm.characters[i].update();
		cm.characters[i].draw();

	}

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