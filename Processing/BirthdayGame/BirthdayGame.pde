// Name: Jamie
// Date: Nov 5, 2018
// Ver : v0.1
// Description:  
//     This program will calculate the area of a triangle
//     based on the height and base inputted.

//CONSTANTS  

//VARIABLES
int birthdayNumber, month, day;
//OBJECTS (LATER)

void setup()
{

//SPLASH PAGE
println ( "The Birthday Game" );
println ( "----------------------------------" );
println ( "This program will calculate" );
println ( "your birthday based on a ");
println ( "series of calculations you");
println ( "applied to your birthday beforehand");
println ( "----------------------------------" );
println ( "In order to play this game you must");
println ( "follow these seven steps first:");
println ( "1: Determine your birth month (January=1, February=2, and so on).");
println ( "2: Multiply that number by 5.");
println ( "3: Add 6 to that number.");
println ( "4: Multiply the number by 4.");
println ( "5: Add 9 to the number.");
println ( "6: Multiply that number by 5.");
println ( "Add your birth day to the number (10 if born on the 10th and so on).");

//INPUT
birthdayNumber = getInt("Enter the number you got from running your birthday through the aforementioned calculations:");

//PROCESSING
month = (birthdayNumber-165)/100;
day = (birthdayNumber-165)%100;

//OUTPUT
println ( "Your birthday is "+month+"/"+day+"." );
println ( "If your birthday is incorrect, try running it through the calculations again.");
}
