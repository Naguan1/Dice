Die one;
int sum=0;
void setup()
{
  noLoop();
  size(500, 500);
}
void draw()
{
  background(0);//your code here
  for (int i = 0; i < 400; i += 50) {
    for(int j = 0; j < 400; j += 50){
    one = new Die (50 + i, 50 + j);
    sum=sum+one.diceRoll;
    one.show();
    
    }
  }
   fill(255);
   textSize(20);
    text("Total: " +sum,200,20);
}

void mousePressed()
{
  redraw();
  sum=0;
}
class Die //models one single dice cube
{
  int diceRoll, myX, myY;

  Die(int x, int y) //constructor
  {
    diceRoll = (int) (Math.random()*6+1);
    myX = x;
    myY = y;//variable initializations here
  }
  void roll()
  {
  
  }
  void show()
  {
    int siz = 50;
    fill((int) (Math.random()*256), (int) (Math.random()*256), (int) (Math.random()*256));
    rect(myX, myY, siz, siz);
    fill(255);
            if(diceRoll==1){ 
          ellipse(myX+25,myY+25,10,10);
          }
          else if(diceRoll==2){
          
          ellipse(myX+12.5,myY+25,10,10);
          ellipse(myX+37.5,myY+25,10,10);
      }
          else if(diceRoll==3){
        
          
          ellipse(myX+12.5,myY+25,10,10);
          ellipse(myX+25,myY+25,10,10);
          ellipse(myX+37.5,myY+25,10,10);
          
  }
          else if(diceRoll==4) {
          
          
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+37.5,myY+37.5,10,10);
          ellipse(myX+37.5,myY+12.5,10,10);
          ellipse(myX+12.5,myY+37.5,10,10);
  }
          else if(diceRoll==5) {
         
          
          ellipse(myX+25,myY+25,10,10);
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+37.5,myY+37.5,10,10);
          ellipse(myX+37.5,myY+12.5,10,10);
          ellipse(myX+12.5,myY+37.5,10,10);
  }
            else if(diceRoll==6) {

          
       ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+25,myY+12.5,10,10);
          ellipse(myX+37.5,myY+12.5,10,10);
            ellipse(myX+12.5,myY+37.5,10,10);
          ellipse(myX+25,myY+37.5,10,10);
          ellipse(myX+37.5,myY+37.5,10,10);
  }
  }
}
