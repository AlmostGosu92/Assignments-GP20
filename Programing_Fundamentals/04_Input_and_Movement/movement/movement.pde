PVector pos = new PVector();
PVector acc = new PVector();
PVector vel = new PVector();
PVector move = new PVector();
float maxSpeed = 10;
float accMult = 45;
float deaccMultPerSec = 3;
float speed = 60;
float deltaTime;
long time;

void setup()
{
  size(640,480);
  pos.x = width * 0.5;
  pos.y = height * 0.5;
  ellipseMode(CENTER);
  frameRate(60);
}

void draw() {
	background(50, 166, 240);

	long currentTime = millis();
	deltaTime = (currentTime - time) * 0.001f;

	acc = input();

	acc.mult(accMult * deltaTime);

	if (acc.mag() == 0){
		acc.x -= vel.x * deaccMultPerSec * deltaTime;
		acc.y -= vel.y * deaccMultPerSec * deltaTime;
	}
	
	vel.add(acc);

	vel.limit(maxSpeed);

	move = vel.copy();
	move.mult(speed * deltaTime);

	pos.add(move);


	ellipse(pos.x, pos.y, 20, 20);

	time = currentTime;
}

