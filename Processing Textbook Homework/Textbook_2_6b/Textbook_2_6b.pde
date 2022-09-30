//Textbook 2.6
//6)
float numberInput, numberTenth, numberThousandth;

void setup()
{
numberInput = getFloat("Enter any number here");

numberTenth = round(numberInput * 10)/10.0;
numberThousandth = round(numberInput * 1000)/1000.0;

println (""+numberInput+"");
println (""+numberTenth+"");
println (""+numberThousandth+"");
}
