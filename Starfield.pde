NormalParticle[] particles;
void setup(){
  size(500,500);
  particles = new NormalParticle[1000];
  for (int i = 0;i<particles.length; i++){
    particles[i] = new NormalParticle();
  }
}
void draw(){
  background(0);
  for (int i=0;i<particles.length;i++){
  particles[i].show();
  particles[i].move();
  }
}
class NormalParticle{
  double myX,myY,myAngle, mySpeed;
  NormalParticle(){
    myX = myY = 250;
    mySpeed = (Math.random()*10);
    myAngle = Math.random()*Math.PI*2;
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    ellipse((float)myX,(float)myY,8,8);
  }
}

//interface Particle
//{
//	//your code here
//  Particle[] yay = new Particle [10];
//  for (int i =0;i<yay.length; i++){
//    yay[i] = new Particle();
//}
//class OddballParticle //uses an interface
//{
//	//your code here
//  double myX,myY,myAngle;
//  int mySpeed;
//  OddballParticle(){
//     myX =(int)(Math.random()*700);
//     myY = (int)(Math.random()*700);
//  void move(){
//    mySpeed = 0;
//    myX = myX +(int)(Math.random()*7)-3;
//    myY = myY +(int)(Math.random()*5)-3;
//    myAngle = Math.sin();
//  }
//  void show(){
//     fill(0,225,0,127);
//    //ellipse((int)(Math.random()*500),(int)(Math.random()*500),8,8);
//    //ellipse(myX+(int)(Math.random()*700),myY+(int)(Math.random()*700),8,8);
//    ellipse(myX,myY,8,8);
//  }
//}
//class JumboParticle //uses inheritance
//{
//	//your code here
//  double myX,myY,myAngle;
//  int mySpeed;
//  JumboParticles(){
//     myX =(int)(Math.random()*700);
//     myY = (int)(Math.random()*700);
//  void move(){
//    mySpeed = 0;
//    myX = myX +(int)(Math.random()*7)-3;
//    myY = myY +(int)(Math.random()*5)-3;
//    myAngle = Math.sin();
//  }
//  void show(){
//     fill(0,225,0,127);
//    //ellipse((int)(Math.random()*500),(int)(Math.random()*500),8,8);
//    //ellipse(myX+(int)(Math.random()*700),myY+(int)(Math.random()*700),8,8);
//    ellipse(myX,myY,8,8);
//  }
//}
