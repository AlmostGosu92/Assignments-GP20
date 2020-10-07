class Zombie extends Character {

	int maxSpeed = 5;


	public Zombie(){
		super();
		characterColor = color(0, 128, 0);
		velocity.limit(maxSpeed);
		isZombie = true;
	}

	public Zombie(float x, float y, float velX, float velY) {
		super(x, y, velX, velY);
		characterColor = color(0, 128, 0);
		velocity.limit(maxSpeed);
		isZombie = true;
	}

}