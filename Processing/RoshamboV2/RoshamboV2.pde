// Name: Jamie
// Date: Nov 19, 2018
// Ver : v0.1
// Description:  
//     This program will play roshambo with you.

//CONSTANTS  
final int ROCK = 0;
final int PAPER = 1;
final int SCISSORS = 2;
final int UNKNOWN = 3;


//VARIABLES
String humanChoice, result, finalResult;
int intComputerChoice, intHumanChoice;
int humanWins = 0;
int computerWins = 0;
boolean gameOver = false;
//OBJECTS (LATER)

void setup()
{

  //SPLASH PAGE

  println ( "Rock Paper Scissors" );
  println ( "---------------------------");
  println ( "You will play rock paper");
  println ( "scissors with a computer");
  println ( "opponent. Win, and you get");
  println ( "nothing. Lose, and you also");
  println ( "get nothing.");

  //BACKGROUND PROCESSES
  size (600, 300);
  surface.setVisible(false);
  textSize(50);

  //INPUT
  do {
  intComputerChoice = (int)random(3);
  humanChoice = getString ( "Enter rock, paper, or scissors here" ).trim();
  println( "HUMAN: " + humanChoice );
  if (humanChoice.equalsIgnoreCase( "rock" ) ) {
    intHumanChoice = ROCK;
  } else if (humanChoice.equalsIgnoreCase( "paper" ) ) {
    intHumanChoice = PAPER;
  } else if (humanChoice.equalsIgnoreCase( "scissors" ) ) {
    intHumanChoice = SCISSORS;
  }
  //For irrelavant answers
  else {
    intHumanChoice = UNKNOWN;
  }

  //PROCESSING/OUTPUT
  //For Draws
  if (intComputerChoice == intHumanChoice) {
    result = ("You and the computer both played "+humanChoice+", you tie.");
    println (""+result+"");
  }
  //All other 6 outcomes
    else if (intComputerChoice == 0 && intHumanChoice == 1) {
    result = ("You played paper and the computer played rock, you win!");
    println (""+result+"");
    humanWins++;
  } else if (intComputerChoice == 0 && intHumanChoice == 2) {
    result = ("You played scissors and the computer played rock, you lose.");
    println (""+result+"");
    computerWins++;
  } else if (intComputerChoice == 1 && intHumanChoice == 0) {
    result = ("You played rock and the computer played paper, you lose.");
    println (""+result+"");
    computerWins++;
  } else if (intComputerChoice == 1 && intHumanChoice == 2) {
    result = ("You played scissors and the computer played paper, you win!");
    println (""+result+"");
    humanWins++;
  } else if (intComputerChoice == 2 && intHumanChoice == 0) {
    result = ("You played rock and the computer played scissors, you win!");
    println (""+result+"");
    humanWins++;
  } else if (intComputerChoice == 2 && intHumanChoice == 1) {
    result = ("You played paper and the computer played scissors, you lose.");
    println (""+result+"");
    computerWins++;
  } else if (intHumanChoice == 3) {
    result = ("Invalid input. Please try again");
    println (""+result+"");
  }

if (humanWins == 2 ) {
   finalResult = ("You win! Congratulations, you win nothing.");
   fill(0);
   surface.setVisible(true);
   text(finalResult, 10, 10, 580, 300);
   gameOver = true;
}
  
 if (computerWins == 2 ) {
   finalResult = ("You lose. :(");
   fill(0);
   surface.setVisible(true);
   text(finalResult, 10, 10, 580, 300);
   gameOver = true;
}

} while (gameOver == false);
}
