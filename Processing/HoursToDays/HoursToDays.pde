// Name: Jamie
// Date: Nov 5, 2018
// Ver : v0.1
// Description:  
//     This program calculates the conversion from
//     hours to days.

//CONSTANTS  

//VARIABLES
int totalHours, days, remainingHours;
//OBJECTS (LATER)

void setup()
{

//SPLASH PAGE
println ( "Hours to Days Converter" );
println ( "-------------------------------" );
println ( "This program will convert hours " );
println ( "into the number of days and ");
println ( "remaining number of hours ");

//INPUT
totalHours = getInt("Enter the number of hours:");

//PROCESSING
days = (int)(totalHours/24);
remainingHours = totalHours%24;

//OUTPUT
println ( ""+totalHours+" hours is equal to "+days+" day(s) and "+remainingHours+" hour(s)" );
}
