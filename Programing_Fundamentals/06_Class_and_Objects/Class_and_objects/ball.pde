class Ball
{
    //Our class variables
    PVector position; //Ball position
    PVector velocity; //Ball direction
    int size;
    int colorRed;
    int colorGreen;
    int colorBlue;
    float x;
    float y;

    Ball(){
    	this.x = random(0, width);
    	this.y = random(0, height);
    	this.size = 10;
    	this.colorRed = 255;
    	this.colorGreen = 0;
    	this.colorBlue = 0;

    	position = new PVector(x, y);

    	velocity = new PVector();
        velocity.x = random(11) - 5;
        velocity.y = random(11) - 5;
    }
    //Ball Constructor, called when we type new Ball(x, y);
    Ball(float x, float y, int size, int colorRed, int colorGreen, int colorBlue)
    {
    	//set values of variables for this instance of Ball
    	this.x = x;
    	this.y = y;
    	this.size = size;
    	this.colorRed = colorRed;
    	this.colorGreen = colorGreen;
    	this.colorBlue = colorBlue;
        //Set our position when we create the code.
        position = new PVector(x, y);

        //Create the velocity vector and give it a random direction.
        velocity = new PVector();
        velocity.x = random(11) - 5;
        velocity.y = random(11) - 5;
    }

    //Update our ball
    void update(){
    	bounce();
        position.x += velocity.x;
        position.y += velocity.y;
    }

    void bounce(){
    	if (position.x < 0 || position.x > width)
    		velocity.x = velocity.x * -1;
    	if (position.y < 0 || position.y > height)
    		velocity.y = velocity.y * -1;
    }

    void draw()
    {
    	fill(colorRed, colorGreen, colorBlue);
        ellipse(position.x, position.y, size, size);
    }
}