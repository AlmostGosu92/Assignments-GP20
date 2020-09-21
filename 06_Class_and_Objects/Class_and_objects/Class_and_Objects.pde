float deltaTime;
long time;
Player player = new Player();
int numberOfBalls = 10;
Ball balls[];

void setup()
{
	balls = new Ball[numberOfBalls];

	for(int i = 0; i < balls.length; i++)
		balls[i] = new Ball();

	size(640,480);
	player.pos.x = width * 0.5;
	player.pos.y = height * 0.5;
	ellipseMode(CENTER);
	frameRate(60);
}

void draw() {
	background(50, 166, 240);
	long currentTime = millis();
	deltaTime = (currentTime - time) * 0.001f;
	
	for (int i = 0; i < balls.length; i ++){
		balls[i].update();
		balls[i].draw();
	}
	player.playerMove();

	time = currentTime;
}

