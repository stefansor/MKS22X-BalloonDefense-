class Bomb extends Tools{
  private int lives;
  private PImage img;
  
  Bomb(float posx, float posy) {
    setX(posx); 
    setY(posy); 
    lives = 1; 
    changeisB();
    img = loadImage("bomb.png");
  }
  
  int getLives() { 
    return lives; 
  }
  
  void loseLife() { 
    lives--; 
  }
  
  boolean isTouching(Balloon other) {
    float x = other.getxcor(); 
    float y = other.getycor(); 
    if (x < getX() + 150 && x > getX() - 150 && y < getY() + 150 && y > getY() - 150) {
      return true;
    }
    else {
      return false; 
    }
  }
  
  void display(){
    pushMatrix();
    translate(getX(), getY());
      if (lives > 0) {
        image(img, 0-20, 0-20, 40, 40);
      }
    popMatrix();
    }
  
  void shoot(){
    
  }
  
  PImage getImage(){
   return img; 
  }
  
  ArrayList<Bullet> getBullets(){
     ArrayList<Bullet> b = new ArrayList<Bullet>();
     return b;
    }
  
}