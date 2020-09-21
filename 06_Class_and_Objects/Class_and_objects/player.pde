class Player{
	PVector pos = new PVector();
	PVector acc = new PVector();
	PVector vel = new PVector();
	PVector move = new PVector();
	float maxSpeed = 10;
	float accMult = 45;
	float deaccMultPerSec = 3;
	float speed = 60;
	
	void playerMove(){

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
		fill(0, 255, 0);
		ellipse(pos.x, pos.y, 20, 20);
	}
}