class AxeEri implements WalkerInterface {

  //Add your own variables here.
  int nextMove = 0;
  int playAreaWidth;
  int playAreaHeight;
  int currentLap = 25;

  PVector player;
  //Do not use processing variables like width or height

  String getName()
  {
    return "AlmostGosu"; //When asked, tell them our walkers name
  }

  PVector getStartPosition(int playAreaWidth, int playAreaHeight)
  {
    //Select a starting position or use a random one.
    float x = (int) playAreaWidth - currentLap;
    float y = (int) currentLap;

    this.playAreaWidth = playAreaWidth;
    this.playAreaHeight = playAreaHeight;

    player = new PVector(x, y);
    //a PVector holds floats but make sure its whole numbers that are returned!
    return player;
  }

  PVector update()
  {
  	if (nextMove == 3 && player.y == 0 + currentLap){
  		nextMove = 0;
  	}
  	else if (nextMove == 0 && player.x == 0 + currentLap){
  		nextMove = 1;
  	}
  	else if (nextMove == 1 && player.y == playAreaHeight - currentLap - 1){
  		nextMove = 2;
  	}
  	else if (nextMove == 2 && player.x == playAreaWidth - currentLap - 1){
  		nextMove = 3;
  		currentLap++;
  	}

    switch(nextMove) {
    case 0:
      return new PVector(-1, 0);
    case 1:
      return new PVector(0, 1);
    case 2:
      return new PVector(1, 0);
    default:
      return new PVector(0, -1);
    }
  }
}

//All valid outputs:
// PVector(-1, 0);
// PVector(1, 0);
// PVector(0, 1);
// PVector(0, -1);

//Any other outputs will kill the walker!
