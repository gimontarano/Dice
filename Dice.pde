//Die die1;
//Die die2;
void setup()
{
	size(400, 400);
	noLoop();
	//die1 = new Die(200, 200);
	//die2 = new Die(100, 100);
}
void draw()
{
	//your code here
	background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	int dieDots = 0;
	for(int i = 0;  i < 5; i = i + 1)
	{
		Die diei = new Die(i*100, 0);
		diei.roll();
		diei.show();
		for(int k = 0; k < 5; k = k + 1)
		{
			Die diek = new Die(i*100, k*100);
			diek.roll();
			diek.show();
		}
	}
	//die1.roll();
	//die1.show();
	//die2.roll();
	//die2.show();

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
		dieValue = (int)(Math.random()*6)+1;
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 100, 100, 30);
		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		if(dieValue == 1)
		{
			ellipse(myX+50, myY+50, 20, 20);
		}
		else if(dieValue == 2)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
		}
		else if(dieValue == 3)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+50, myY+50, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
		}
		else if(dieValue == 4)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+75, myY+25, 20, 20);
			ellipse(myX+25, myY+75, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
		}
		else if(dieValue == 5)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+75, myY+25, 20, 20);
			ellipse(myX+25, myY+75, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
			ellipse(myX+50, myY+50, 20, 20);
		}
		else if(dieValue == 6)
		{
			ellipse(myX+25, myY+25, 20, 20);
			ellipse(myX+75, myY+25, 20, 20);
			ellipse(myX+25, myY+75, 20, 20);
			ellipse(myX+75, myY+75, 20, 20);
			ellipse(myX+50, myY+25, 20, 20);
			ellipse(myX+50, myY+75, 20, 20);
		}
	}
}
