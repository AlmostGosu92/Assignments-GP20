class CharacterManager {

	Character characters[];
	int numberOfCharacters = 100;

	CharacterManager() {

		characters = new Character[numberOfCharacters];
	}


	void createCharacters() {

		for(int i = 0; i < characters.length; i++) {

			if (i == 0) {
				characters[i] = new Zombie();
			}
			else {
				characters[i] = new Character();
			}

		}
	}


	void zombieCollisionCheck (Character person1, Character person2) {

		if (person1.isZombie && person2.isZombie == false) {
			person2.isZombie = true;
		}
		else if (person1.isZombie == false && person2.isZombie) {
			person1.isZombie = true;
		}
	}

}