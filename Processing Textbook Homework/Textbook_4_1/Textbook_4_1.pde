//Textbook 4.1
//1)0

//2)Infinity

//3) 10,0|9,2|8,4|7,6|

//4)
int number = 7;
int exponent = 1;
double powerOfTwo = Math.pow(2,exponent);
println (""+powerOfTwo+"");
while ( number > powerOfTwo ){
   exponent++; 
   powerOfTwo = Math.pow(2,exponent);
   if ( number <= powerOfTwo ){
     println (""+powerOfTwo+" is the closest exponent of two to "+number+"");
   }
}
