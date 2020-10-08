GameObject[][] gridCells;
GameObject[][] gridBuffer;
float cellSize = 10;
int numberOfColums;
int numberOfRows;
int fillPercentage = 10;


void setup() {
	
	size(512, 512);
	ellipseMode(LEFT);
	frameRate(4);

	numberOfColums = (int)Math.floor(width / cellSize);
	numberOfRows = (int)Math.floor(height / cellSize);

	gridCells = new GameObject[numberOfColums][numberOfRows];
	gridBuffer = new GameObject[numberOfColums][numberOfRows];

	for (int y = 0; y < numberOfRows; y++) {

		for (int x = 0; x < numberOfColums; x++) {

			gridCells[x][y] = new GameObject(x * cellSize, y * cellSize, cellSize);

			if (random(0, 100) < fillPercentage) {
				gridCells[x][y].alive = true;
			}
		}
	}
}


void draw() {

	background(0);


	for (int y = 0; y < numberOfRows; y++) {

		for (int x = 0; x < numberOfColums; x++) {

			gridCells[x][y].draw();
		}
	}
	update();
}


void update() {
	
	arrayCopy(gridCells, gridBuffer);

	for (int y = 0; y < numberOfRows; y++) {

		for (int x = 0; x < numberOfColums; x++) {

			gridBuffer[x][y].alive = checkNeighbours(x, y);
		}
	}

	arrayCopy(gridBuffer, gridCells);
}

boolean checkNeighbours(int x, int y) {

	int neighbours = 0;

	/*for (int i = x - 1; i < x + 1; i++){

		for (int j = y - 1; j < y + 1; j++)*/
	for (int i = -1; i < 2; i++) {

		for (int j = -1; j < 2; j++){

			if (i == 0 && j == 0)
				continue;
			
			if (x + i < 0 || x + i >= gridCells.length || y + j < 0 || y + j >= gridCells[0].length)
				continue;

			if (gridCells[x + i][y + j].alive) {
				neighbours++;

				if (neighbours > 3)
					return false;
			}

		}
	}


//Any live cell with fewer than two live neighbors dies, as if caused by underpopulation.
//Any live cell with two or three live neighbors lives on to the next generation.
//Any live cell with more than three live neighbors dies, as if by overpopulation.
//Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction

	if (neighbours < 2)
		return false;
	
	if (neighbours == 3)
		return true;

	return gridCells[x][y].alive;


}