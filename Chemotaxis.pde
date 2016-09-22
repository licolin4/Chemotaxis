 //declare bacteria variables here  
Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500); 
 	colony = new Bacteria[200];
 	for (int i = 0; i < colony.length; i++)
 	{
 		int myX = (int)(Math.random()*500);
 		int myY = (int)(Math.random()*500);
 		colony[i] = new Bacteria(myX, myY);
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX,myY,myColor,myColor1,myColor2;
 	Bacteria(int x, int y)
 	{
 	myX = x;
 	myY = y;
 	myColor =(int)(Math.random()*255);
 	myColor1 =(int)(Math.random()*255);
 	myColor2 =(int)(Math.random()*255);
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	void show()
 	{
 		fill(myColor,myColor1,myColor2);
 		ellipse(myX,myY,10,10);
 	}
 }    