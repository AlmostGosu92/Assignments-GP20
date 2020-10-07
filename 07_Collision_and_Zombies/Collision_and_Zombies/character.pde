class Character {

	PVector position;
	PVector velocity;
	int size = 15;
	color characterColor = color(128, 0, 0);
	boolean isZombie = false;

	Character() {

		position = new PVector(random(0, width), random(0, height));
		velocity = new PVector();
		velocity.x = random(-2, 3);
		velocity.y = random(-2, 3);
	}

	Character(float x, float y, float velX, float velY) {

		position = new PVector(x, y);
		velocity = new PVector(velX, velY);

	}



	void update() {
		bounce();
		position.x += velocity.x;
		position.y += velocity.y;
	}

	void bounce() {
		if (position.x < 0 || position.x > width) {
			velocity.x = velocity.x * -1;
		}
		if (position.y < 0 || position.y > height) {
			velocity.y = velocity.y * -1;
		}
	}

	void draw() {
		fill(characterColor);
		ellipse(position.x, position.y, size, size);
	}

}