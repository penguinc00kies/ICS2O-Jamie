// Name: Jamie
// Date: Nov 8, 2018
// Ver : v0.1
// Description:  
//     This program will take the 4 numbers that
//     you inputed and tell you the lowest and highest one.

//CONSTANTS  

//VARIABLES
double numberOne, numberTwo, numberThree, numberFour;
//OBJECTS (LATER)

void setup()
{

//SPLASH PAGE

println ( "Maximum and Minimum" );
println ( "-----------------------------" );
println ( "This program will calculate" );
println ( "the minjimum and maximum");
println ( "values from the numbers you");
println ( "have inputted" );

//INPUT
boolean test = true;
do{
  try{
numberOne = getDouble ( "Enter the first number here." );
numberTwo = getDouble ( "Enter the second number here." );
numberThree = getDouble ( "Enter the third number here." );
numberFour = getDouble ( "Enter the fourth number here." );
test = true;
  }catch (Exception InputMismatchException){
    //(Exception e) would catch ALL exceptions
  println("help me");
  
  test = false;
  }

}while (test == false);
//PROCESSING/OUTPUT
if ( numberOne >= numberTwo || numberOne >= numberThree || numberOne >= numberFour ){
  println ( "Largest Number:"+numberOne+"" );
}
else if ( numberTwo >= numberThree || numberTwo >= numberFour ){
println ( "Largest Number:"+numberTwo+"" );
}
else if ( numberThree >= numberFour ){
println ( "Largest Number:"+numberThree+"" );
}
else {
println ( "Largest Number:"+numberFour+"" );
}

if ( numberOne < numberTwo || numberOne < numberThree || numberOne < numberFour ){
  println ( "Smallest Number:"+numberOne+"" );
}
else if ( numberTwo < numberThree || numberTwo < numberFour ){
println ( "Smallest Number:"+numberTwo+"" );
}
else if ( numberThree < numberFour ){
println ( "Smallest Number:"+numberThree+"" );
}
else {
println ( "Smallest Number:"+numberFour+"" );
}
  

}
