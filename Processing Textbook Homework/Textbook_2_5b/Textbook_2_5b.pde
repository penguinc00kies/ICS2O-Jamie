//Textbook 2.5
//4)

//CONSTANTS  

//VARIABLES
char letter;
int letterPosition;
//OBJECTS (LATER)

void setup()
{

//SPLASH PAGE
println ( "Letter Position Calculator" );
println ( "---------------------------" );
println ( "This program will calculate" );
println ( "A specific letter's position");
println ( "in the alphabet");

//INPUT
letter = getChar("Enter an upper case letter in the alphabet");

//PROCESSING
letterPosition = letter-64;


//OUTPUT
println ( ""+letter+" is at position "+letterPosition+" in the alphabet.");
}
