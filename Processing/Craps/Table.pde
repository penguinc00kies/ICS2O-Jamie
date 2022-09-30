public class Table {

  // COORDINATES
  private int left;
  private int right;
  private int top;
  private int bottom;

  // TABLE; CENTER + WxH
  public Table( int x, int y, int w, int h ) {

    this.left = x - w/2;
    this.right = x + w/2;
    this.top = y - h/2;
    this.bottom = y + h/2;
    
  }

  public int getLeft() {
    return this.left + 3;
  }
  public int getRight() {
    return this.right - 2;
  }
  public int getTop() {
    return this.top + 3;
  }
  public int getBottom() {
    return this.bottom - 2;
  }
  public int getHeight() {
    return this.getBottom() - this.getTop();
  }
  public int getWidth() {
    return this.getRight() - this.getLeft();
  }

  public void draw() {

    stroke( 0 );
    strokeWeight( 5 );

    fill( 0, 200, 0 );
    rectMode( CORNERS );
    rect( left, top, right, bottom );
    
  }
  
}
