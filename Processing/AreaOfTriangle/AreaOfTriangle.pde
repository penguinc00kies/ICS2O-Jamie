// Name: Jamie
// Date: Nov 5, 2018
// Ver : v0.1
// Description:  
//     This program will calculate the area of a triangle
//     based on the height and base inputted.

//CONSTANTS  

//VARIABLES
double base, triangleHeight, area;
//OBJECTS (LATER)

void setup()
{

//SPLASH PAGE
println ( "Area Of A Triangle Calculator(cm)" );
println ( "-----------------------------" );
println ( "This program will calculate" );
println ( "the area of a tringle based");
println ( "on the inputted base and height");

//INPUT
base = getDouble("Enter the length of the base in cm:");
height = getDouble("Enter the height in cm:");

//PROCESSING
area = (base*triangleHeight)/2;

//OUTPUT
println ( "The area of the triangle is "+area+" cm squared" );
}
