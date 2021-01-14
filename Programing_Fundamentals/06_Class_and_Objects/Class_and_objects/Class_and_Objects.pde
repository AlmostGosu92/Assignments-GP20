float deltaTime;
long time;
Player player;
int numberOfBalls = 10;
Ball balls[];

void setup() {

	size(640,480);
	/*player.position.x = width * 0.5;
	player.position.y = height * 0.5;*/
	ellipseMode(CENTER);
	frameRate(60);

	start();
}

void start() {
	player = new Player();

	balls = new Ball[numberOfBalls];
	
	for(int i = 0; i < balls.length; i++)
		balls[i] = new Ball();
}

void draw() {
	
	clearBackground();
	
	long currentTime = millis();
	deltaTime = (currentTime - time) * 0.001f;
	
	for (int i = 0; i < numberOfBalls; i++){

		boolean hasCollided = roundCollision(player.position.x,
			player.position.y,
			player.size/2,

			balls[i].position.x,
			balls[i].position.y,
			balls[i].size);

		if(hasCollided) {
			player.size = 0;
			player.dead = true;
		}
		
		balls[i].update();
	}

	for (int i = 0; i < balls.length; i ++){
		balls[i].draw();
	}
	player.playerMove();

	if(player.dead){
		gameOver();
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
	text("GAME OVER", width/2, height/2);
	textSize(16);
	text("Press 'R' to restart.", width/2, height/2 + 32);

	if (keyPressed) {
		if (key == 'r') {
			start();
		}
	}
}