class IronBalloons extends Balloon{
  
  IronBalloons() {
    super(3, 2, #A9A9A9, true, false); 
  }
  
  void loseLife() {
    setLives(getLives() - 1);
    if (getLives() == 0) {
      setPopped(); 
    }
  }
}
