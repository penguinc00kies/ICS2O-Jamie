public class RollButton {

  // COORDINATES
  private int left;
  private int right;
  private int top;
  private int bottom;

  // TABLE; CENTER + WxH
  public RollButton( int x, int y, int w, int h ) {

    this.left = x - w/2;
    this.right = x + w/2;
    this.top = y - h/2;
    this.bottom = y + h/2;

  }

  public void draw() {

    stroke( 0 );
    strokeWeight( 5 );

    fill( 0, 200, 0 );
    rectMode( CORNERS );
    rect( left, top, right, bottom );
    
    textSize( 24 );
    fill( 0 );
    text("Roll", left + (right-left)/4, top + 2*(bottom-top)/3 );
    
  }
  
  public boolean wasClicked( int x, int y ) {
    if( x >= left && x <= right && y >= top && y <= bottom ) {
      return true;
    }
    return false;
  }
  
}
