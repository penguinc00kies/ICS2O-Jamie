// Name: Jamie
// Date: Nov 8, 2018
// Ver : v0.1
// Description:  
//     This program will take the 4 numbers that
//     you inputed and tell you the lowest and highest one.

//CONSTANTS  
double temp = 0;
//VARIABLES
double numberOne, numberTwo, numberThree, numberFour;
//OBJECTS (LATER)

void setup()
{

  //SPLASH PAGE

  println ( "Maximum and Minimum" );
  println ( "-----------------------------" );
  println ( "This program will calculate" );
  println ( "the minimum and maximum");
  println ( "values from the numbers you");
  println ( "have inputted" );

  //INPUT
//Gets the number inputs
  numberOne = getDouble ( "Enter the first number here." );
  numberTwo = getDouble ( "Enter the second number here." );
  numberThree = getDouble ( "Enter the third number here." );
  numberFour = getDouble ( "Enter the fourth number here." );

  //PROCESSING/OUTPUT
//For the highest number
  if ( numberOne > numberTwo ) {
    temp = numberTwo;
    numberTwo = numberOne;
    numberOne = temp;
  }
  if ( numberTwo > numberThree ) {
    temp = numberThree;
    numberThree = numberTwo;
    numberTwo = temp;
  }
  if ( numberThree > numberFour ) {
    temp = numberFour;
    numberFour = numberThree;
    numberThree = temp;
  } 
  println ( "The largest number is "+numberFour+"" );

//For the lowest number
  if ( numberOne < numberTwo ) {
    temp = numberTwo;
    numberTwo = numberOne;
    numberOne = temp;
  }
  if ( numberTwo < numberThree ) {
    temp = numberThree;
    numberThree = numberTwo;
    numberTwo = temp;
  }
  if ( numberThree < numberFour ) {
    temp = numberFour;
    numberFour = numberThree;
    numberThree = temp;
  } 
  println ( "The smallest number is "+numberFour+"" );
}
