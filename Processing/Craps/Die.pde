public class Die {
    
    private int numDots;
    
    public Die( ) { 
    }
    
    public Die( int value ) {
        numDots = value;
    }
    
 
    public int getNumDots() {
        return numDots;
    }
    
    public void setNumDots( int n ) {
        numDots = n;
    }
    
    public void roll() {
        numDots = (int) (Math.random() * 6) + 1;
    }
    
}
