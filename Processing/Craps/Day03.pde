/**
 * Day 03 - GUI Score Board
 * 
 */

//
// POSSIBLE ROLL RESULTS
//
public static final int USER_WINS = 1;
public static final int USER_ROLL_AGAIN = 0;
public static final int USER_LOSS = -1;

// 
// DECLARE VARIABLES YOU NEED HERE
//
int wins = 0;
int losses = 0;
int ties = 0;
String textResult;
boolean youWin = false;
boolean youLose = false;
boolean youTie = false;

//
// PART A:  Stats
//
// This method is called after a ROLL.
//
//   1.  Keep track of TOTAL WINS, LOSES.
//   2.  Game is best 3 of 5.  If the user WINS 3 times, or LOSES 3 times... call the method "gameOver();"
//   
void updateStats() {
  println( "-------------------------" );
  println( "Part A" );
  //println( "RESULT IS: " + result );  // SEE CONSTANTS;  1 User Wins, -1 User Loss, 0 Roll Again
  if ( result == 1 ){
    println ( "You Win!" );
    wins++;
    ties = 0;
    textResult = ("Win");
    youWin = true;
  }
  
  else if ( result == -1 ){
    println ( "You lose." );
    losses++;
    ties = 0;
    textResult = ("Loss");
    youLose = true;
  }
  
  else{
    println ( "You tie, roll again." );
    ties++;
    textResult = ("Tie");
    youTie = true;
  }
 
  if ( wins == 2 ){
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(0, 102, 153);
    text( "Game Over! You Win!" , width/2, 62); 
    gameOver();
  }
  
  else if ( losses == 2 ){
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(0, 102, 153);
    text( "Game Over! You Lose!" , width/2, 62); 
    gameOver();
  }

  // IS THE GAME OVER?
  //gameOver();

}

// PART B:  Update GUI
//
// This method is called after a ROLL.
//
//   1.  Display # of Wins, Display # of Loses
//   2.  Display the SUM of the of the dice
//   3.  Display the POINT (If PHASE 2, and the user needs to ROLL AGAIN
//   4.  GAME OVER MESSAGE; if needed!
//
//   To Draw Text   :  https://processing.org/reference/text_.html
//   To Allign Text :  https://processing.org/reference/textAlign_.html
//   
void updateGUI() {
  
  
  // CLEARS TOP PANEL
  fill( 208 );
  rect( 0, 0, width, height/4.08 );
  rect( 0, height-height/4.08, width/4.08, height );
  
  drawHeaders();

  println( "-------------------------" );
  println( "Part B" );
  println( "RESULT IS: " + textResult );
  println( "POINT IS : " + point + " (this value will be ZERO if Phase 2 is not needed)" );
  println( "Die 1 Value: " + die1.getNumDots() );
  println( "Die 2 Value: " + die2.getNumDots() );
  int dieOne = die1.getNumDots();
  int dieTwo = die2.getNumDots();
  int sum = dieOne + dieTwo;
  int winningNumber;
  
  // TEXT EXAMPLE
  textSize(32);
  textAlign(CENTER, CENTER);
  fill(0, 102, 153);
  if ( youWin == true ){ 
  text( "You Win!" , width/2, 30); 
  youWin = false;
  }
  else if ( youLose == true ){ 
  text( "You Lose" , width/2, 30); 
  youLose = false;
  }
  else if ( youTie == true ){ 
  text( "Roll Again" , width/2, 30); 
  youTie = false;
  }
  
  fill( 204 );
  rectMode ( CORNER );
  rect( width-width/4.08, height-height/4.08, width/4.08, height );
  if ( ties == 1 ){
  fill( 204 );
  rectMode ( CORNER );
  rect( width-width/4.08, height-height/4.08, width/4.08, height );
  textAlign(RIGHT, BOTTOM);
  winningNumber = sum;
  fill(0, 102, 153);
  text ( winningNumber , width-5, height-55+37 );
  }
  
  fill(0, 102, 153);
  textAlign(LEFT, TOP);
  text ( wins , 5, 37 );
  textAlign(RIGHT, TOP);
  text ( losses , width-5, 37 );
  textAlign(LEFT, BOTTOM);
  text ( sum , 5, height-55+37 );
  
  drawHeaders();
}
