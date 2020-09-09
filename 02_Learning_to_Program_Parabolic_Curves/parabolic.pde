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
    //höger nere - clockwise
    line(500 -(i + frame) % 500, 500, 500, (i + frame) % 500);
    //vänster nere - clockwise
    line(500 - (i + frame) % 500, 500, 0, 500 - (i + frame) % 500);
    //vänster uppe - clockwise
    line(0, 500 - (i + frame) % 500, (i + frame) % 500, 0);
    //höger uppe - clockwise
    line(500, (i + frame) % 500,(i + frame) % 500, 0);


	}
	frame ++;
}