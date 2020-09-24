class Character {

	PVector position;
	PVector velocity;
	int size = 15;
	color characterColor;
	float x;
	float y;
	boolean isZombie;

	Character() {
		this.x = random(0, width);
		this.y = random(0, height);

		position = new PVector(x, y);
		velocity = new PVector();
		velocity.x = random(-5, 6);
		velocity.y = random(-5, 6);
	}

	Character(float x, float y, float velX, float velY) {
		this.x = x;
		this.y = y;

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