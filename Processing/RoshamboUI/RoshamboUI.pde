// Name: Jamie
// Date: Nov 29, 2018
// Ver : v0.3
// Description:  
//     This program will play roshambo with you.
//     It is best 2 out of 3.

//CONSTANTS  


//VARIABLES
String result, finalResult;
int intComputerChoice; 
int intHumanChoice = 4;
int humanWins = 0;
int computerWins = 0;
int roundNumber = 0;
boolean gameOver = false;
int rockX = 0;
int rockY = 0;
int paperX = 360;
int paperY = 0;
int scissorsX = 180;
int scissorsY = 360;
int imageLength = 360;
String humanChoice;
PImage rockI, paperI, scissorsI;
String computerScore;
String humanScore;
//OBJECTS (LATER)

void draw () {
}

void mouseClicked () {
  fill (255);
   rect ( 0, 720, 720, 280 );
  if ( humanWins < 2 && computerWins < 2 ) {
    if (mouseX > rockX && mouseX < rockX + imageLength && mouseY > rockY && mouseY < rockY + imageLength) {
      intHumanChoice = 0;
      roundNumber++;
      //println( "ROCK" );
      humanChoice = "rock";
      play();
    } else if (mouseX > paperX && mouseX < paperX + imageLength && mouseY > paperY && mouseY < paperY + imageLength) {
      intHumanChoice = 1;
      roundNumber++;
      //println( "PAPER" );
      humanChoice = "paper";
      play();
    } else if (mouseX > scissorsX && mouseX < scissorsX + imageLength && mouseY > scissorsY && mouseY < scissorsY + imageLength) {
      intHumanChoice = 2;
      roundNumber++;
      //println( "SCISSORS" );
      humanChoice = "scissors";
      play();
    }
  } else {
    humanWins = 0;
    computerWins = 0;
    roundNumber = 0;
  }
    fill (0);
    textSize (50);
    humanScore = "Player: "+humanWins+"";
    computerScore = "Computer: "+computerWins+"";
    text(humanScore, 10, 720, 720, 300);
    text(computerScore, 10, 770, 720, 300);
    text("Round: "+roundNumber+"", 330, 720, 720, 300);
}

void setup()
{


  //BACKGROUND PROCESSES
  size (720, 1000);
  noStroke();
  fill (255);
  rect ( 0, 0, 720, 1000 );
  textSize (50);
  fill (0);
  humanScore = "Player: "+humanWins+"";
  computerScore = "Computer: "+computerWins+"";
  text(humanScore, 10, 720, 720, 300);
  text(computerScore, 10, 770, 720, 300);
  text("Round: "+roundNumber+"", 330, 720, 720, 300);

  //IMAGES
  rockI = loadImage("rock.jpg");
  paperI = loadImage("paper.jpg");
  scissorsI = loadImage("scissors.jpg");

  image (rockI, rockX, rockY);
  image (paperI, paperX, paperY);
  image (scissorsI, scissorsX, scissorsY);

  //SPLASH PAGE

  println ( "Rock Paper Scissors" );
  println ( "---------------------------" );
  println ( "You will play rock paper" );
  println ( "scissors with a computer" );
  println ( "opponent. Win, and you get" );
  println ( "nothing. Lose, and you also" );
  println ( "get nothing. The matches" );
  println ( "will be best 2 out of 3." );
}

void play() {

  //PROCESSING/OUTPUT
  intComputerChoice = (int)random(3);
  fill (0);
  textSize (40);
  
  //For Draws
  if (intComputerChoice == intHumanChoice) {
    result = ("You and the computer both played "+humanChoice+", you tie.");
    println ("Round: "+roundNumber+"");
    text (result, 10, 830, 720, 300);
  }
  //All other 6 outcomes
  else if (intComputerChoice == 0 && intHumanChoice == 1) {
    result = ("You played paper and the computer played rock, you win!");
    println ("Round: "+roundNumber+"");
    text (result, 10, 830, 720, 300);
    humanWins++;
  } else if (intComputerChoice == 0 && intHumanChoice == 2) {
    result = ("You played scissors and the computer played rock, you lose.");
    println ("Round: "+roundNumber+"");
    text (result, 10, 830, 720, 300);
    computerWins++;
  } else if (intComputerChoice == 1 && intHumanChoice == 0) {
    result = ("You played rock and the computer played paper, you lose.");
    println ("Round: "+roundNumber+"");
    text (result, 10, 830, 720, 300);
    computerWins++;
  } else if (intComputerChoice == 1 && intHumanChoice == 2) {
    result = ("You played scissors and the computer played paper, you win!");
    println ("Round: "+roundNumber+"");
    text (result, 10, 830, 720, 300);
    humanWins++;
  } else if (intComputerChoice == 2 && intHumanChoice == 0) {
    result = ("You played rock and the computer played scissors, you win!");
    println ("Round: "+roundNumber+"");
    text (result, 10, 830, 720, 300);
    humanWins++;
  } else if (intComputerChoice == 2 && intHumanChoice == 1) {
    result = ("You played paper and the computer played scissors, you lose.");
    println ("Round: "+roundNumber+"");
    text (result, 10, 830, 720, 300);
    computerWins++;
  }

  if (humanWins == 2 ) {
    fill (255);
    rect ( 0, 720, 720, 1000 );
    finalResult = ("You win! To play again, click on any of the symbols.");
    fill(0);
    textSize(40);
    text(finalResult, 10, 830, 720, 300);
    gameOver = true;
  }

  if (computerWins == 2 ) {
    fill (255);
    rect ( 0, 720, 720, 1000 );
    finalResult = ("You lose. :( To play again, click on any of the symbols.");
    fill(0);
    textSize(40);
    text(finalResult, 10, 830, 720, 300);
    gameOver = true;
  }
}
