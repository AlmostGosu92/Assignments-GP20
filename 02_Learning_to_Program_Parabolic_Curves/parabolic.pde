int frame = 0;
int spaceBetween = 10;

void setup() 
{
	size(500, 500);
}

void draw() 
{
	background(255, 255, 255);
	stroke(0, 0, 0);
	strokeWeight(2);

	for (int i = 0; i < 500; i += spaceBetween) 
	{
		if (i % 3 == 0) {
			stroke(0, 0, 0, 200);
		}
		else {
			stroke(0, 0, 0, 64);
		}

		line(i, 0, 500, i);
		line(i, 0, 0, 500 - i);
		line(500, i, 500 - i, 500);
		line(0, i, i, 500);
	}
}
