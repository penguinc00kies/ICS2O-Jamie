/*
*Jamie's Game of Simplified Craps
*ICS2O1 Summative Day 2
*Going by the rules outlined by Mr. Muir
*1/10/2019
*/

surface.setVisible(false);
boolean phaseTwoDone = false;
int diceOne = (int)random(6)+1;
int diceTwo = (int)random(6)+1;
int diceSum = diceOne + diceTwo;
int winningNumber;

println ("Welcome to Jamie's Craps table!");
println ("Here you'll 'play' an automated game of Craps.");
println ("Good luck.");
println("");
delay (5000);

println ("Phase 1");
println("");
delay (1000);
println ("1st dice roll: "+diceOne+"");
delay (1500);
println ("2nd dice roll: "+diceTwo+"");
delay (1500);
println ("Your sum is "+diceSum+"");
delay (1500);
println("");

if ( diceSum == 7 || diceSum == 11 ){
  println ("Congratulations, you've won at phase one by rolling a "+diceSum+".");
  println ("To play again, run this file again.");
}

else if ( diceSum == 2 || diceSum == 3 || diceSum == 12 ){
  println ("Sorry, you've lost at phase one by rolling a "+diceSum+".");
  println ("To play again, run this file again.");
}

else {
  println ("Phase 2");
  println("");
  delay (1000);
  while ( phaseTwoDone == false ) {
     winningNumber = diceSum;
     println ("Your new winning number is "+winningNumber+"");
     diceOne = (int)random(6)+1;
     diceTwo = (int)random(6)+1;
     diceSum = diceOne + diceTwo;
     println ("1st dice roll: "+diceOne+"");
     delay (1500);
     println ("2nd dice roll: "+diceTwo+"");
     delay (1500);
     println ("Your sum is "+diceSum+"");
     delay (1500);
     println("");
     if ( diceSum == winningNumber ){
       phaseTwoDone = true;
       println ("Congratulations, you've won at phase two by rolling your winning number, "+diceSum+".");
       println ("To play again, run this file again.");
       println ("");
     }
     else if ( diceSum == 7 ){
       phaseTwoDone = true;
       println ("Sorry, you've lost at phase two by rolling a 7.");
       println ("To play again, run this file again.");
       println ("");
     }
  }
}
