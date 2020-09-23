class Character
{
	PVector position;
	PVector velocity;
	int size;
	color characterColor;
	float x;
	float y;
	boolean isZombie;


	Character(){
		this.x = random(0, width);
		this.y = random(0, height);
		this.size = 15;
		this.characterColor = new color(255, 255, 255);

		position = new PVector(x, y);
		velocity = new PVector();
		velocity.x = random(-5, 6);
		velocity.y = random(-5, 6);
	}

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

void becomeZombie() {
	isZombie = true;
}

void becomeHuman() {
	isZombie = false;
}