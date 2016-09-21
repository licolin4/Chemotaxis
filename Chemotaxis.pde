 //declare bacteria variables here  
Bacteria[] colony;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500); 
 	colony = new Bacteria[100];
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX,myY,myColor,myColor1,myColor2;
 	Bacteria()
 	{
 	myX = 200;
 	myY = 200;
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
 		fill(myColor,myColor1,myColor2);
 		ellipse(myX,myY,5,5);
 	}
 }    