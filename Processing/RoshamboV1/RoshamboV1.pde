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
String humanChoice,result;
int intComputerChoice,intHumanChoice;
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
size (600,300);
surface.setVisible(false);
intComputerChoice = (int)random(3);
textSize(50);

//INPUT
humanChoice = getString ( "Enter rock, paper, or scissors here" ).trim();
println( "HUMAN: " + humanChoice );
if (humanChoice.equalsIgnoreCase( "rock" ) ){
  intHumanChoice = ROCK;
}
else if (humanChoice.equalsIgnoreCase( "paper" ) ){
  intHumanChoice = PAPER;
}
else if (humanChoice.equalsIgnoreCase( "scissors" ) ){
  intHumanChoice = SCISSORS;
}
//For irrelavant answers
else {
  intHumanChoice = UNKNOWN;
}

//PROCESSING/OUTPUT
//For Draws
if (intComputerChoice == intHumanChoice){
  result = ("You and the computer both played "+humanChoice+", you tie.");
  fill(0);
  surface.setVisible(true);
text(result, 10, 10, 580, 300);
}
//All other 6 outcomes
else if (intComputerChoice == 0 && intHumanChoice == 1){
  result = ("You played paper and the computer played rock, you win!");
  fill(0);
  surface.setVisible(true);
text(result, 10, 10, 580, 300);
}
else if (intComputerChoice == 0 && intHumanChoice == 2){
  result = ("You played scissors and the computer played rock, you lose.");
  fill(0);
  surface.setVisible(true);
text(result, 10, 10, 580, 300);
}
else if (intComputerChoice == 1 && intHumanChoice == 0){
  result = ("You played rock and the computer played paper, you lose.");
  fill(0);
  surface.setVisible(true);
text(result, 10, 10, 580, 300);
}
else if (intComputerChoice == 1 && intHumanChoice == 2){
  result = ("You played scissors and the computer played paper, you win!");
  fill(0);
  surface.setVisible(true);
text(result, 10, 10, 580, 300);
}
else if (intComputerChoice == 2 && intHumanChoice == 0){
  result = ("You played rock and the computer played scissors, you win!");
  fill(0);
  surface.setVisible(true);
text(result, 10, 10, 580, 300);
}
else if (intComputerChoice == 2 && intHumanChoice == 1){
  result = ("You played scissors and the computer played paper, you lose.");
  fill(0);
  surface.setVisible(true);
text(result, 10, 10, 580, 300);
}
else if (intHumanChoice == 3){
  result = ("Invalid input. Please try again");
  fill(0);
  surface.setVisible(true);
text(result, 10, 10, 580, 300);
}
}
