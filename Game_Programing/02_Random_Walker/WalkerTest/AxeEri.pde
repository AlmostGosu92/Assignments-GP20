class AxeEri implements WalkerInterface {

  //Add your own variables here.
  int nextMove = 0;
  int stepsFromXBorder;
  int stepsFromYBorder;
  int startPosX;
  int startPosY;
  int playAreaWidth;
  int playAreaHeight;
  //Do not use processing variables like width or height

  String getName()
  {
    return "AlmostGosu"; //When asked, tell them our walkers name
  }

  PVector getStartPosition(int playAreaWidth, int playAreaHeight)
  {
    //Select a starting position or use a random one.
    float x = (int) playAreaWidth - stepsFromXBorder;
    float y = (int) 0;

    this.playAreaWidth = playAreaWidth;
    this.playAreaHeight = playAreaHeight;

    //a PVector holds floats but make sure its whole numbers that are returned!
    return new PVector(x, y);
  }

  PVector update()
  {
  	stepsFromXBorder = playAreaWidth - startPosX
  	stepsFromYBorder

  	if (nextMove == 0)
  		stepsFromXBorder++;
  	else if (nextMove == 1)
  		stepsFromYBorder++;
  	else if (nextMove == 2)
  		stepsFromXBorder

  	if (nextMove == 0 && stepsFromXBorder == playAreaWidth -1)
  		nextMove++;

    switch(nextMove) {
    case 0:
      return new PVector(-1, 0);
    case 1:
      return new PVector(0, -1);
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
