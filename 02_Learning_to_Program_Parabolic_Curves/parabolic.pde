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
			stroke(211, 12, 12, 117);
		}
		//övre 2
		line(0, i, 500 -i, 0);
		line(500, i, i, 0);
		//undre 2
		line(0, 500 - i, 500 - i, 500);
		line(500, 500 - i, i, 500);
	}
}
