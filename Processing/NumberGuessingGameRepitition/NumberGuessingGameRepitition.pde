// Name: Jamie
// Date: Nov 15, 2018
// Ver : v0.1
// Description:  
//     This program will generate a random number.
//     It's up to you to guess it.

//CONSTANTS  

//VARIABLES
int inputtedNumber, diff, turnsTaken;
int randomNumber = (int)(Math.random() * 100) + 1;
boolean stillGuessing;
//OBJECTS (LATER)

void setup()
{

  //SPLASH PAGE

  println ( "Number Gussing Game" );
  println ( "-------------------------------");
  println ( "This program will generate");
  println ( "a random integer between 1 and");
  println ( "100. You will get unlimited");
  println ( "tries to guess the integer.");
  println ( "Also, Doc Louis will be the one");
  println ( "telling you how close you are.");
  
  //BACKGROUND PROCESSES
  stillGuessing = false;
  surface.setVisible(false);

  do {
    //INPUT
    inputtedNumber = getInt ( "Enter your guess here." );

    //PROCESSING/OUTPUT
    if (inputtedNumber == randomNumber) {
      println ( "You did it son! You guessed the number!" );
      stillGuessing = true;
      turnsTaken++;
      println ( "Congratulations son, you only took "+turnsTaken+" turns" );
    } else if (inputtedNumber > randomNumber) {
      println ( "You're to high son." );
      turnsTaken++;
    } else if (inputtedNumber < randomNumber) {
      println ( "You're to low son." );
      turnsTaken++;
    }

    diff = randomNumber -inputtedNumber;

    //Mind the 'sons' it's part of Doc Louis' character(google him he's an actual thing)
    if ( abs(diff) >= 30 ) {
      println ( "Damn son! You're ICE COLD right now." );
    } else if ( abs(diff) >= 20 ) {
      println ( "Geting warmer, but you're still in the freezer son." );
    } else if ( abs(diff) >= 10 ) {
      println ( "Alright, alright. You're as hot as the state of Florida now son." );
    } else if ( abs(diff) >= 3 ) {
      println ( "Holy Buffalo Chicken Wings! That's how hot you are son." );
    } else if ( abs(diff) >= 1 ) {
      println ( "Son, if you're this hot you might as well be in hell itself." );
    }
  } while (stillGuessing == false);
}
