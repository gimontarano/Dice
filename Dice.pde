int clickNumber = 1;
int dieDots = 0;
int totalDots = dieDots;
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
	platypus();
	fill(255);
	textSize(45);
	text("Roll Total: " + dieDots, 155, 525);
	textSize(20);
	text("Roll #" + clickNumber, 375, 510);
	textSize(15);
	text("Total of all rolls: " + (totalDots + dieDots), 415, 535);

	

}
void platypus() 
{
	noStroke();
	int xX = (int)(Math.random()*400)+51;
	int yY = (int)(Math.random()*400)+51;
	//legs
	fill(51, 255, 153);
	rect(xX + 20, yY + 40, 15, 20, 10);
	rect(xX + 5, yY + 40, 15, 20, 10);
	rect(xX - 40, yY + 40, 15, 20, 10);
	rect(xX - 25, yY + 40, 15, 20, 10);
	//tail
	fill(255, 128, 0);
	rect(xX + 25, yY + 15, 60, 25, 30);
	//body
	fill(51, 255, 153);
	rect(xX - 50, yY, 100, 50, 30);
	//beak
	fill(255, 128, 0);
	rect(xX - 75, yY + 15, 40, 25, 50);
	//eyes
	fill(0);
	ellipse(xX - 30, yY + 20, 10, 10);
}
void mousePressed()
{
	stroke(0);
	redraw();
	clickNumber = clickNumber + 1;
	totalDots = totalDots + dieDots;
	dieDots = 0;
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
