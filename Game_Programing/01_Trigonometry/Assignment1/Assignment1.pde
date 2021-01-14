int frame;
float curveSpeed;
float curveAmp;
float curveFrequency;
float multiplier = 0.002;
int numberOfPoints;

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
	clearBackground();	
	sineCurve();
	cosCurve();
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
