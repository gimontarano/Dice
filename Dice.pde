Die die1;
void setup()
{
	size(400, 400);
	noLoop();
	die1 = new Die(200, 200);
}
void draw()
{
	//your code here
	background(0);
	die1.roll();
	die1.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	int dieValue;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		//your code here
		dieValue = (int)(Math.random()*7);
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 100, 100, 30);
		if(dieValue == 1)
		{
			ellipse(myX+50, myY+50, 10, 10);
		}
		else if(dieValue == 2)
		{
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+75, myY+75, 10, 10);
		}
		else if(dieValue == 3)
		{
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+50, myY+50, 10, 10);
			ellipse(myX+75, myY+75, 10, 10);
		}
		else if(dieValue == 4)
		{
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+75, myY+25, 10, 10);
			ellipse(myX+25, myY+75, 10, 10);
			ellipse(myX+75, myY+75, 10, 10);
		}
		else if(dieValue == 5)
		{
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+75, myY+25, 10, 10);
			ellipse(myX+25, myY+75, 10, 10);
			ellipse(myX+75, myY+75, 10, 10);
			ellipse(myX+50, myY+50, 10, 10);
		}
		else if(dieValue == 6)
		{
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+75, myY+25, 10, 10);
			ellipse(myX+25, myY+75, 10, 10);
			ellipse(myX+75, myY+75, 10, 10);
			ellipse(myX+50, myY+25, 10, 10);
			ellipse(myX+50, myY+75, 10, 10);
		}
	}
}
