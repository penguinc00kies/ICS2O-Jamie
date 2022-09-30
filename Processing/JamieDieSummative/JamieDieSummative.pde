/**
 * ICS2O - Performance Task 2018
 * Day 01 - Draw Die
 *
 * Name:
 * Date:
 */

/**
 * PART A: Draw Die
 * 
 * x     : x-value; upper left corner of the die
 * y     : y-value; upper left corner of the die
 * value : value of the die
 *
 */
void drawDie( int x, int y, int value ) {

  // DEBUG MESSAGE; x, y, value
  println( "Die(" + x + "," + y + ") - Value: " + value );

  // *********************************** PART A - START

  int diceLength = 100;
  fill ( #89B7AF );
  noStroke ();
  rect ( x, y, 100, 100 );
  fill ( 255 );
  if ( value%2 == 1 ){
  //Center Dot
  ellipse ( x + diceLength*0.5, y + diceLength*0.5, 15, 15 );
  }
  if ( value > 1 ){
  //Upper Left and Bottom Right Dot
  ellipse ( x + diceLength*0.15, y + diceLength*0.15, 15, 15 );
  ellipse ( x + diceLength*0.85, y + diceLength*0.85, 15, 15 );
  }
  if ( value > 3 ){
  //Bottom Left and Upper Right
  ellipse ( x + diceLength*0.85, y + diceLength*0.15, 15, 15 );
  ellipse ( x + diceLength*0.15, y + diceLength*0.85, 15, 15 );
  }
  if ( value == 6 ){
  // Middle Left and Middle Right
  ellipse ( x + diceLength*0.15, y + diceLength*0.5, 15, 15 );
  ellipse ( x + diceLength*0.85, y + diceLength*0.5, 15, 15 );
  }

  // *********************************** PART A - END
  
}

/**
 * PART B: Roll Two (2) Die, when button is clicked!
 * 
 */
void mouseClicked() {

  

  // ROLL DIE, ONLY IF BUTTON IS CLICKED!
  if ( wasClicked( mouseX, mouseY ) ) {
    println( "Button Clicked!" );

    // BACKGROUND; white
    background( 255 );

    // BUTTON
    drawButton();


    // *********************************** PART B - START
    
    // YOUR CODE GOES HERE

    // GENERATE RANDOM #
    // DRAW DIE #1

    drawDie( 150, 150, (int)random(6)+1 );

    // GENERATE RANDOM #
    // DRAW DIE #2

    drawDie( 350, 150, (int)random(6)+1 );

    // *********************************** PART B - END
  }
}

// ******************************************
// DO NOT TOUCH THE CODE BELOW
// ******************************************
void draw() {
}

void setup() {

  // WINDOW SIZE
  size( 600, 400 );

  // SEE REFERENCE:  https://processing.org/reference/rectMode_.html
  rectMode( CORNER );

  // BACKGROUND; white
  background( 255 );

  // BUTTON
  drawButton();
}

void drawButton() {

  int buttonH = 60;
  int buttonW = 100;

  stroke( 0 );
  strokeWeight( 5 );

  fill( 0, 200, 0 );
  rectMode( CORNER );
  rect( width/2 - buttonW/2, height/2 + height/4, buttonW, buttonH );

  textSize( 24 );
  fill( 0 );
  text("Roll", width/2 - buttonW/4.2, height/2 + height/2.9 );
}

public boolean wasClicked( int x, int y ) {
  int buttonH = 60;
  int buttonW = 100;

  int x1 = width/2 - buttonW/2;
  int x2 = width/2 - buttonW/2 + buttonW;
  int y1 = height/2 + height/4;
  int y2 = height/2 + height/4 + buttonH;

  if ( x >= x1 && x <= x2 && y >= y1 && y <= y2 ) {
    return true;
  }
  return false;
}
