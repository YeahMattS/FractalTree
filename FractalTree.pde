private double fractionLength = .8; 
private int smallestBranch = 8; 
private double branchAngle = .2;  
private int red, green, blue;
public void setup() 
{   
	size(640,480);    
	// noLoop(); 
	frameRate(45);
} 
public void draw() 
{   
	red = (int)(Math.random()*255);
	green = (int)(Math.random()*255);
	blue = (int)(Math.random()*255);
	branchAngle = mouseY*Math.PI/960;
	background(0);   
	stroke(red, green, blue);
	translate(320, 480);  
	line(0, 0, 0, -100);   
	translate(0, -100);
	drawBranches(100);  //will add later 
} 


public void drawBranches(double branchLength) 
{   
	//your code here    
	branchLength*=fractionLength;
	if (branchLength > smallestBranch)
	{
		pushMatrix();
		rotate((float)branchAngle);
		line(0, 0, 0, (float)(-branchLength));
		translate(0, (float)(-branchLength));
		drawBranches(branchLength); 
		popMatrix();

		pushMatrix();
		rotate((float)(-branchAngle));
		line(0, 0, 0, (float)(-branchLength));
		translate(0, (float)(-branchLength));
		drawBranches(branchLength); 
		popMatrix();
	}
} 
