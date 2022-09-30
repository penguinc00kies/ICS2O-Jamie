
public class RollingDie extends Die {

  // CONSTANTS
  static final int SIZE_FACTOR = 60;
  static final double SLOW_DOWN = 0.97;
  static final double SPEED_FACTOR = 0.04;
  static final double SPEED_LIMIT = 2.0;

  // LOCATIOn
  private int top, bottom, left, right, xCenter, yCenter;
  private double xSpeed, ySpeed;

  // OBJECTS
  private Table table;

  public RollingDie( Table t ) {

    this.table = t;
    this.xCenter = t.getLeft() + (SIZE_FACTOR/2) + (int) (Math.random() * ( t.getRight() - t.getLeft() - SIZE_FACTOR ) ) ;
    this.yCenter = t.getTop()  + (SIZE_FACTOR/2) + (int) (Math.random() * ( t.getBottom() - t.getTop() - SIZE_FACTOR ) );

    // CENTER HAS BEEN UPDATED; UPDATE: top, bottom, left, right
    recalculate();
  }

  public RollingDie( Table t, int value ) {
    this( t );
    this.setNumDots( value );
  }

  // ROLL; starts this die rolling
  public void roll() {

    super.roll();
    xCenter = table.getLeft();
    yCenter = table.getTop() + table.getHeight() / 2;
    xSpeed = table.getWidth() * (Math.random() + 1) * SPEED_FACTOR;
    ySpeed = table.getHeight() * (Math.random() - .5) * 2. * SPEED_FACTOR;
    recalculate();
  }

  // ROLLING? - true if this die is rolling; otherwise returns false
  public boolean isRolling() {
    return xSpeed > SPEED_LIMIT || xSpeed < -SPEED_LIMIT
      || ySpeed > SPEED_LIMIT || ySpeed < -SPEED_LIMIT;
  }

  // RECALCULATE; center has moved; update L/R/U/D
  private void recalculate() {
    this.left = this.xCenter - (SIZE_FACTOR/2);
    this.right = this.xCenter + (SIZE_FACTOR/2);
    this.top = this.yCenter - (SIZE_FACTOR/2);
    this.bottom = this.yCenter + (SIZE_FACTOR/2);
  }



  // NO DIE OVERLAPS; keep moving this die as long as it overlaps with other
  public void avoidCollision(RollingDie other) {
    if (other == this) {
      return;
    }

    while (Math.abs(xCenter - other.xCenter) < SIZE_FACTOR && Math.abs(yCenter - other.yCenter) < SIZE_FACTOR) {
      move();
    }
  }

  // MOVE; moves this die on the "table," bouncing off the edges when necessary
  private void move() {
    xCenter += xSpeed;
    yCenter += ySpeed;

    int radius = SIZE_FACTOR / 2;

    if (xCenter < table.getLeft() + radius) {
      xCenter = table.getLeft() + radius;
      xSpeed = -xSpeed;
    }

    if (xCenter > table.getRight() - radius) {
      xCenter = table.getRight() - radius;
      xSpeed = -xSpeed;
    }

    if (yCenter < table.getTop() + radius) {
      yCenter = table.getTop() + radius;
      ySpeed = -ySpeed;
    }

    if (yCenter > table.getBottom() - radius) {
      yCenter = table.getBottom() - radius;
      ySpeed = -ySpeed;
    }

    // CENTER HAS BEEN UPDATED; UPDATE: top, bottom, left, right
    recalculate();
  }

  // DRAW DIE; moving? stationary?
  public void draw() {
    if (xCenter < 0 || yCenter < 0) {
      return;
    } else if (isRolling()) {
      move();
      drawRolling();
      xSpeed *= SLOW_DOWN;
      ySpeed *= SLOW_DOWN;
    } else {
      drawStopped();
    }
  }


  // DRAW; DIE ROLLING
  private void drawRolling() {
    super.roll();
    
    // MODES
    rectMode( CORNERS );
    ellipseMode( CENTER );
    noStroke();
    
    int x = xCenter - SIZE_FACTOR / 2 + (int) (3 * Math.random()) - 1;
    int y = yCenter - SIZE_FACTOR / 2 + (int) (3 * Math.random()) - 1;
    
    fill( 255, 0, 0 );
    if (x % 3 > 0) {
      rect( left, top, right, bottom, SIZE_FACTOR/5 );
    } else {
      ellipse( xCenter, yCenter, SIZE_FACTOR + 3, SIZE_FACTOR + 3 );
    }
    
    drawDots();
    
  }


  // DRAW; DIE STOPPED
  void drawStopped() {

    // MODES
    rectMode( CORNERS );
    noStroke();

    // DIE
    fill( 255, 0, 0 );
    rect( this.left, this.top, this.right, this.bottom );

    // DRAW DOTS
    drawDots();
    
  }

  // DRAW; DOTS - STOPPED & ROLLING
  private void drawDots() {

    // MODES
    rectMode( CORNERS );
    noStroke();

    // DOTS
    fill( 255 );

    // CENTER
    if ( this.getNumDots() % 2 == 1 ) {
      ellipse( this.left + SIZE_FACTOR/2, this.top + SIZE_FACTOR/2, SIZE_FACTOR * 0.2, SIZE_FACTOR * 0.2 );
    }
    // TOP LEFT / BOTTOM RIGHT
    if ( this.getNumDots() > 1 ) {
      ellipse( this.left + SIZE_FACTOR/6, this.top + SIZE_FACTOR/6, SIZE_FACTOR * 0.2, SIZE_FACTOR * 0.2 );
      ellipse( this.left + 5*SIZE_FACTOR/6, this.top + 5*SIZE_FACTOR/6, SIZE_FACTOR * 0.2, SIZE_FACTOR * 0.2 );
    }
    // TOP RIGHT / BOTTOM LEFT
    if ( this.getNumDots() > 3 ) {
      ellipse( this.left + 5*SIZE_FACTOR/6, this.top + SIZE_FACTOR/6, SIZE_FACTOR * 0.2, SIZE_FACTOR * 0.2 );
      ellipse( this.left + SIZE_FACTOR/6, this.top + 5*SIZE_FACTOR/6, SIZE_FACTOR * 0.2, SIZE_FACTOR * 0.2 );
    }
    // MID LEFT & RIGHT
    if ( this.getNumDots() == 6 ) {
      ellipse( this.left + SIZE_FACTOR/6, this.top + SIZE_FACTOR/2, SIZE_FACTOR * 0.2, SIZE_FACTOR * 0.2 );
      ellipse( this.left + 5*SIZE_FACTOR/6, this.top + SIZE_FACTOR/2, SIZE_FACTOR * 0.2, SIZE_FACTOR * 0.2 );
    }
  }
}
