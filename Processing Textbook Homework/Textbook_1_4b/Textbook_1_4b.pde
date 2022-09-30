//Textbook 1.4
void setup()
{
String firstName = getString("Enter your first name:");
String lastName = getString("Enter your last name:");
String gender = getString ("Enter your gender:");
int cm = getInt("Enter your height in cm:");
float age = getFloat("Enter your age:");
float weight = getFloat("Enter your weight in kg:");
println ( "" );
println ( "" );
println ( "" );
println ( ""+lastName+", "+firstName+"" );
println ( "Gender: "+gender+"" );
println ( "Age: "+age+" ");
println ( "Height: "+cm+" cm" );
println ( "Weight: "+weight+" kg" );
}
