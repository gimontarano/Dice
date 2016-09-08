//Die die1;
//Die die2;
void setup()
{
	size(500, 550);
	noLoop();
	//die1 = new Die(200, 200);
	//die2 = new Die(100, 100);
}
void draw()
{
	//your code here
	background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	int dieDots = 0;
	for(int i = 0;  i < 10; i = i + 1)
	{
		for(int j = 0; j < 10; j = j + 1)
		{
			Die diej = new Die(i*50, j*50);
			diej.roll();
			diej.show();
			dieDots = dieDots + diej.dieValue;

		}
	}
	textAlign(CENTER, CENTER);
	fill(255);
	textSize(50);
	text("Total: " + dieDots, 250, 525);

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
		rect(myX, myY, 50, 50, 15);
		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		if(dieValue == 1)
		{
			ellipse(myX+25, myY+25, 10, 10);
		}
		else if(dieValue == 2)
		{
			ellipse(myX+25/2, myY+25/2, 10, 10);
			ellipse(myX+75/2, myY+75/2, 10, 10);
		}
		else if(dieValue == 3)
		{
			ellipse(myX+25/2, myY+25/2, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+75/2, myY+75/2, 10, 10);
		}
		else if(dieValue == 4)
		{
			ellipse(myX+25/2, myY+25/2, 10, 10);
			ellipse(myX+75/2, myY+25/2, 10, 10);
			ellipse(myX+25/2, myY+75/2, 10, 10);
			ellipse(myX+75/2, myY+75/2, 10, 10);
		}
		else if(dieValue == 5)
		{
			ellipse(myX+25/2, myY+25/2, 10, 10);
			ellipse(myX+75/2, myY+25/2, 10, 10);
			ellipse(myX+25/2, myY+75/2, 10, 10);
			ellipse(myX+75/2, myY+75/2, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
		}
		else if(dieValue == 6)
		{
			ellipse(myX+25/2, myY+25/2, 10, 10);
			ellipse(myX+75/2, myY+25/2, 10, 10);
			ellipse(myX+25/2, myY+75/2, 10, 10);
			ellipse(myX+75/2, myY+75/2, 10, 10);
			ellipse(myX+25, myY+25/2, 10, 10);
			ellipse(myX+25, myY+75/2, 10, 10);
		}
	}
}
