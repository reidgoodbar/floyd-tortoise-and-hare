import java.util.Random;

int nodeCount;
int minCycleCount;
int cycleCount;
int radius;

public void setup()
{
  Random rand = new Random();
  nodeCount = 10;
  radius = 100;
  minCycleCount = 5;
  cycleCount = rand.nextInt((nodeCount - minCycleCount) + 1) + 5;
  
  size(800,600);
  for(int x = 0; x < radius; x++)
  {
     ellipse(400+x, 300+(float)Math.sqrt((float)Math.pow(radius, 2)- (float)Math.pow(x, 2)), 10, 10);
     ellipse(400+-x, 300+(float)Math.sqrt((float)Math.pow(radius, 2)- (float)Math.pow(x, 2)), 10, 10);
     ellipse(400+x, 300-(float)Math.sqrt((float)Math.pow(radius, 2)- (float)Math.pow(x, 2)), 10, 10);
     ellipse(400-x, 300-(float)Math.sqrt((float)Math.pow(radius, 2)- (float)Math.pow(x, 2)), 10, 10);
  }
  
}

void draw()
{
 //println("in draw"); 
}
