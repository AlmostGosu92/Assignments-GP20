int frame;
float curveSpeed;
float curveAmp;
float curveFrequency;
float multiplier = 0.002;
int numberOfPoints;

float posX;
float posY;
float v;

void setup()
{
	size(640, 480);
	strokeWeight(7);
	stroke(0, 255, 0);
	clearBackground();
	numberOfPoints = 100;
	frame = 0;
	curveSpeed = 0.10;
	curveAmp = 100;
	curveFrequency = 0.15;

}

void draw()
{
	v = 10f;
	posY = height / 2;
	posX = width / 2;
	clearBackground();	
	//sineCurve();
	//cosCurve();
	sineCosCircle(100);
	frame++;
}

void clearBackground()
{
	background(0);
}

void sineCurve()
{
	stroke(0, 255, 0);
	for (int i = 0; i < numberOfPoints; i++)
	{
		point(i * 10, height / 2 + sin((frame * curveSpeed) + (i * curveFrequency) - radians(90)) * curveAmp);
	}
}

void cosCurve()
{
	stroke(255, 128, 0);
	for (int i = 0; i < numberOfPoints; i++)
	{
		point(i * 10, height / 2 + cos((frame * curveSpeed) + (i * curveFrequency)) * curveAmp);
	}
}

void sineCosCircle(int numberOfPoints)
{
	stroke(0, 255, 0);

	float direction = 0;


	for (int i = 0; i < numberOfPoints; i++) 
	{	
		
		float dX = cos(direction) * v;
		float dY = sin(direction) * v;

		direction += (TWO_PI)*2 / numberOfPoints;

		point(posX + dX * (float) i /numberOfPoints, posY + dY * (float) i / numberOfPoints);
	}

}