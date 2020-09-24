class Zombie extends Character {

	public Zombie(){
		super();
		characterColor = color(0, 128, 0);
	}

	public Zombie(float x, float y, float velX, float velY) {
		super(x, y, velX, velY);
		characterColor = color(0, 128, 0);
	}

}