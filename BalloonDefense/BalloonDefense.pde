Tile[][] tiles = new Tile[10][10];
  
    void setup(){
      size(900, 600);
      
      setupTiles(); 
    }
    
    void draw(){
      if (waves > 20) {
        displayWin(); 
      }
      if (life == 0) {
        displayEnd(); 
      }
      else {
        infoSetup(); 
        
        for(int i = 0; i < tiles.length; i++){
          for(int j = 0; j < tiles[0].length; j++){
           tiles[i][j].display(); 
          }
        }
        
        bSetup(); 
        
        for (int i = 0; i < Balloons.size(); i++) {
          if (Balloons.get(i).getLives() == 0) {
            Balloons.remove(i); 
            bLeft--; 
          }
          if (Balloons.get(i).reachedEnd()) {
            Balloons.remove(i); 
            life--; 
          }
          else {
            Balloon ball = Balloons.get(i); 
            if (ball.popping()) {
              if (i+1 < Balloons.size()) {
                Balloons.remove(i+1);
                bLeft--; 
              }
              if (i+2 < Balloons.size()) {
                Balloons.remove(i+2);
                bLeft--; 
              }
              if (i-1 > -1) {
                Balloons.remove(i-1);
                bLeft--; 
              }
              if (i-2 > -1) {
                Balloons.remove(i-2);
                bLeft--; 
              }
            }
            ball.move(); 
            ball.display(); 
          }
        }
        if (bLeft == 0) {
          waves++; 
          counter = 0; 
          coins += 250; //HOW MUCH DOES COINS INCREASE AT THE END OF A WAVE? 
        }
      }
      
    }
  
  
 
