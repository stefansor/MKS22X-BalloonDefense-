class Tack extends Tools{
    private int lives;
    private PImage img; 
    
    Tack(float posx, float posy){
      setX(posx); 
      setY(posy); 
      lives = 5; 
      changeisT(); 
      img = loadImage("tacks.png");
    }
    
    void loseLife(){
     lives--; 
    }
    
    int getLives(){
     return lives; 
    }
    
    void display(){
      if (lives > 0) {
        image(img, getX()-20, getY()-20, 40, 40);
      }
    } 

    boolean isCatapult(){
     return false; 
    }
    void shoot(){
    
    }
   
    
    ArrayList<Bullet> getBullets(){
     ArrayList<Bullet> n = new ArrayList<Bullet>();
     return n;
    }
    
    Bullet getbullet(int f){
     ArrayList<Bullet> n = new ArrayList<Bullet>();
     return n.get(f);
    }
    
}
