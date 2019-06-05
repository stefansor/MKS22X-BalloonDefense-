abstract class Tools{
  private float xcor, ycor; 
  private boolean isT = false; 
  private boolean isB = false; 
  private boolean isC = false;
  
  boolean isTouching(Balloon other) {
    float x = other.getxcor(); 
    float y = other.getycor(); 
    if (x < xcor + 20 && x > xcor - 20 && y < ycor + 20 && y > ycor - 20) { //checks if balloon is 20 units away from the tool 
      return true;
    }
    else {
      return false; 
    }
  }
  
  void changeisT() {
    isT = true; 
  }
  
  void changeisB() {
    isB = true; 
  }
  void changeisC(){
    isC = true; 
  }
  
  boolean isTack() {
    return isT; 
  }
  
  boolean isBomb() {
    return isB; 
  }
  
  boolean isCatapult(){
   return isC; 
  }
  
  float getX() {
    return xcor; 
  }
  
  float getY() {
    return ycor; 
  }
  
  void setX(float x) {
    xcor = x; 
  }
  
  void setY(float y) {
    ycor = y; 
  }
  
  int getLives() { //NEED TO TALK ABOUT THIS
    return 1; 
  }
  
  void loseLife() { //NEED TO TALK ABOUT THIS
  }
  
<<<<<<< HEAD
  ArrayList<Bullet> getBullets(){
     ArrayList<Bullet> n = new ArrayList<Bullet>();
     return n;
    }
    
    Bullet getbullet(int f){
     ArrayList<Bullet> n = new ArrayList<Bullet>();
     return n.get(f);
    }
    
    void shoot(){
    
    }
  
  abstract void display();
  //abstract void shoot();
  //abstract ArrayList<Bullet> getBullets(); // These last three functions function as place holders 
  //abstract Bullet getbullet(int f); // Only truly written for catapult and included in abstract Tools due to tool arraylist for each tile
=======
  void shoot(){}

  ArrayList<Bullet> getBullets(){
     ArrayList<Bullet> n = new ArrayList<Bullet>();
     return n;
  }
  
  Bullet getbullet(int f){
     ArrayList<Bullet> n = new ArrayList<Bullet>();
     return n.get(f);
  }
  
  abstract void display();
  /*
  abstract void shoot();
  abstract ArrayList<Bullet> getBullets();
  abstract Bullet getbullet(int f);
  */
>>>>>>> design
}
