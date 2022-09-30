// Name: Jamie
// Date: December 6, 2018
// Ver : v0.1
// Description:  
//This is a slot machine simulation(with a Kirby theme).
//There is no real money involved so it's E for Everyone

//VARIABLES
PImage buttonI, tokenI, kirby, metaKnight, dedede, waddleDee;
long tokens = 50;
int slot1, slot2, slot3;

//CONTANTS
final int buttonX = 200;
final int buttonY = 290;
final int buttonLength = 200;
final int tokenX = 10;
final int tokenY = 10;
final int tokenLength = 85;
final int slotsLength = 200;
final int slot1X = 0;
final int slot2X = 200;
final int slot3X = 400;
final int slotsY = 100;

void draw (){
}

void mouseClicked (){
   if ( tokens > 0 ) {
    if (mouseX > buttonX && mouseX < buttonX + buttonLength && mouseY > buttonY && mouseY < buttonY + buttonLength) {
      tokens--;
      slot1 = (int)random(4)+1;
      slot2 = (int)random(4)+1;
      slot3 = (int)random(4)+1;
      //print ( ""+slot1+" " );
      //print ( ""+slot2+" " );
      //println ( ""+slot3+" " );
      slots();
      play();
      }
     else if (mouseX > slot2X && mouseY > 500 && mouseX < slotsLength+slot2X && mouseY < slotsLength+500){
       textSize (20);
       fill(255);
       rect (tokenLength*2.15, 0, 600, tokenLength);
       fill(0);
       text ("See you later, you get to keep "+tokens+" tokens", tokenLength*2.15, tokenY+tokenLength*2/3-20);
       text ("To play again, press the spin button", tokenLength*2.15, tokenY+tokenLength*2/3+10);
       tokens = 50;
     }
    }
   else {
     fill(255);
     rect (tokenLength*2.15, 0, 600, tokenLength);
     fill(0);
     textSize (20);
     text ("You now have 0 tokens. Don't come back", tokenLength*2.15, tokenY+tokenLength*2/3);
    }
}

void setup(){
  
  //STARTUP PROCESSES
  size (600, 600);
  noStroke();
  fill (255);
  rect ( 0, 0, 800, 800 );
  fill(0);
  textSize(50);
  text(""+tokens+"", tokenX+tokenLength, tokenY+tokenLength*2/3);
  textSize(20);
  fill(#DAFA0F);
  rect (slot1X, slotsY, slotsLength, slotsLength);
  fill(#EA80AC);
  rect (slot2X, slotsY, slotsLength, slotsLength);
  fill(#DAFA0F);
  rect (slot3X, slotsY, slotsLength, slotsLength);
  fill(0);
  rect (slot2X, 500, slotsLength, slotsLength);
  fill(255);
  text ("Step Away", slot2X+40, 540, slotsLength/2, slotsLength/4);
  
  //IMAGES
  buttonI = loadImage("SpinButton.png");
  tokenI = loadImage("MaximTomato.png");
  kirby = loadImage("Kirby.png");
  metaKnight = loadImage ("MetaKnight.png");
  dedede = loadImage ("Dedede.png");
  waddleDee = loadImage ("WaddleDee.png");
  fill(0);
  //For some reason the metKnight and kirby images turned out larger that the other two so I had to do some downsizing everytime they appeared to make all four the same size.
  image (tokenI, tokenX, tokenX, tokenLength, tokenLength);
  image (buttonI, buttonX, buttonY, buttonLength, buttonLength);
  image (kirby, tokenX+tokenLength*0.05, 315, tokenLength*0.9, tokenLength*0.9);
  text("= 10 tokens", tokenX+tokenLength, 315+tokenLength/2);
  image (dedede, tokenX, 400, tokenLength, tokenLength);
  text("= 8 tokens", tokenX+tokenLength, 400+tokenLength/2);
  image (metaKnight, 400+tokenLength*0.05, 315, tokenLength*0.9, tokenLength*0.9);
  text("= 6 tokens", 400+tokenLength, 315+tokenLength/2);
  image (waddleDee, 400, 400, tokenLength, tokenLength);
  text("= 4 tokens", 400+tokenLength, 400+tokenLength/2);
  
}

//DISPLAYS THE "LOTTO NUMBERS"
void slots(){
  fill(#DAFA0F);
  rect (slot1X, slotsY, slotsLength, slotsLength);
  fill(#EA80AC);
  rect (slot2X, slotsY, slotsLength, slotsLength);
  fill(#DAFA0F);
  rect (slot3X, slotsY, slotsLength, slotsLength);
  
  switch(slot1){
    case 1:
      image (waddleDee, slot1X, slotsY, slotsLength, slotsLength);
      break;
    case 2: //For some reason the metKnight and kirby images turned out larger that the other two so I had to do some downsizing
      image (metaKnight, slot1X+slotsLength*0.05, slotsY+slotsLength*0.05, slotsLength*0.9, slotsLength*0.9);
      break;
    case 3:
      image (dedede, slot1X, slotsY, slotsLength, slotsLength);
      break;
    case 4:
      image (kirby, slot1X+slotsLength*0.05, slotsY+slotsLength*0.05, slotsLength*0.9, slotsLength*0.9);
      break;
  }
      switch(slot2){
    case 1:
      image (waddleDee, slot2X, slotsY, slotsLength, slotsLength);
      break;
    case 2:
      image (metaKnight, slot2X+slotsLength*0.05, slotsY+slotsLength*0.05, slotsLength*0.9, slotsLength*0.9);
      break;
    case 3:
      image (dedede, slot2X, slotsY, slotsLength, slotsLength);
      break;
    case 4:
      image (kirby, slot2X+slotsLength*0.05, slotsY+slotsLength*0.05, slotsLength*0.9, slotsLength*0.9);
      break;
  }
      switch(slot3){
    case 1:
      image (waddleDee, slot3X, slotsY, slotsLength, slotsLength);
      break;
    case 2:
      image (metaKnight, slot3X+slotsLength*0.05, slotsY+slotsLength*0.05, slotsLength*0.9, slotsLength*0.9);
      break;
    case 3:
      image (dedede, slot3X, slotsY, slotsLength, slotsLength);
      break;
    case 4:
      image (kirby, slot3X+slotsLength*0.05, slotsY+slotsLength*0.05, slotsLength*0.9, slotsLength*0.9);
      break;
  }
}

  //DETERMINES WHETHER OR NOT YOU WON
void play(){
  textSize (20);
  fill(255);
  rect (tokenLength*2.15, 0, 600, tokenLength);
  fill(0);
  if (slot1 != slot2 || slot2 != slot3 || slot3 != slot1){
    text ("Sorry, you didn't win. Better luck next time", tokenLength*2.15, tokenY+tokenLength*2/3);
  }
  else if (slot1 == 1 && slot2 == 1 && slot3 == 1){
    tokens += 4;
    text ("Congratulations, you win 4 tokens!", tokenLength*2.15, tokenY+tokenLength*2/3);
  }
  else if (slot1 == 2 && slot2 == 2 && slot3 == 2){
    tokens += 6;
    text ("Congratulations, you win 6 tokens!", tokenLength*2.15, tokenY+tokenLength*2/3);
  }
  else if (slot1 == 3 && slot2 == 3 && slot3 == 3){
    tokens += 8;
    text ("Congratulations, you win 8 tokens!", tokenLength*2.15, tokenY+tokenLength*2/3);
  }
  else if (slot1 == 4 && slot2 == 4 && slot3 == 4){
    tokens += 10;
    text ("Congratulations, you win 10 tokens!", tokenLength*2.15, tokenY+tokenLength*2/3);
  }
  fill(255);
  rect(tokenLength+10, 0, tokenLength, tokenLength);
  fill(0);
  textSize(50);
  text(""+tokens+"", tokenX+tokenLength, tokenY+tokenLength*2/3);
}
