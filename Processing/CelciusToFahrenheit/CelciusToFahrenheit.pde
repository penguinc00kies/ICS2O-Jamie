// Name: Jamie
// Date: Nov 5, 2018
// Ver : v0.1
// Description:  
//     This program calculates the conversion from
//     Celcius to Fahrenheit.

//CONSTANTS  

//VARIABLES
double celsius, fahrenheit;
//OBJECTS (LATER)

void setup()
{

//SPLASH PAGE
println ( "Celsius to Fahrenheit Converter" );
println ( "-------------------------------" );
println ( "This program will convert a " );
println ( "temperature in Celsius to Fahrenheit");

//INPUT
celsius = getDouble("Enter the temperature in Celsius:");

//PROCESSING
fahrenheit = (celsius*1.8)+32;

//OUTPUT
println ( "The temperature of "+celsius+" degrees in Fahrenheit is "+fahrenheit+" degrees" );
}
