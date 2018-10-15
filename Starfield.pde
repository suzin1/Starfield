Particle[] particles;
void setup(){
  size(500,500);
  particles = new Particle[1000];
  for (int i = 0;i<particles.length; i++){
    particles[i] = new NormalParticle();
  }
    particles[0] = new OddballParticle();
    particles[1] = new JumboParticle();
}
void draw(){
  background(0);
  for (int i=0;i<particles.length;i++){
  particles[i].show();
  particles[i].move();
  }
}
class NormalParticle implements Particle {
  double myX,myY,myAngle, mySpeed;
  NormalParticle(){
    myX = myY = 250;
    mySpeed = (Math.random()*5);
    myAngle = Math.random()*Math.PI*2;
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(91,67,206);
    stroke(0);
    ellipse((float)myX,(float)myY,5,5);
  }
}
interface Particle
{
	//your code here
  public void move();
  public void show();
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
  double myX,myY,myAngle, mySpeed;
  OddballParticle(){
    myX = myY = 250;
    mySpeed = (Math.random()*5);
    myAngle = Math.random()*Math.PI*2;
  }
  public void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  public void show(){
    fill(39,214,116);
    stroke(0);
    ellipse((float)myX,(float)myY,25,25);
  }
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
  double myX,myY,myAngle, mySpeed;
  JumboParticle(){
    myX = myY = 250;
    mySpeed = (Math.random()*50);
    myAngle = Math.random()*Math.PI*2;
  }
  public void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  public void show(){
     fill(0,225,255);
    stroke(255,0,0);
    ellipse((float)myX,(float)myY,100,100);
  }
}
