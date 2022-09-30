static final int STATUS_DONE = 1;
static final int STATUS_ROLLING = 2;

static Table table;
static RollButton rollButton;
static RollingDie die1;
static RollingDie die2;
static int status;
static int point;
static int result;
static boolean gameOver = false;


void setup() {

  // TABLE SIZE
  size( 600, 400 );

  // DRAW SETUP
  frameRate( 30 );
  noStroke();
  rectMode( CORNERS );
  ellipseMode( CENTER );


  // CRAPS GREEN TABLE; CENTER
  table = new Table( width/2, height/2, 560, 200 );
  table.draw();

  // ROLL BUTTON
  rollButton = new RollButton( width/2, height/2 + 150, 100, 50 );
  rollButton.draw();
  
  // FIELD HEADERS
  drawHeaders();
  
  // ROLLING DIE!
  die1 = new RollingDie(table, 6);
  die2 = new RollingDie(table, 5);
  die1.avoidCollision(die2);

  die1.drawStopped();
  die2.drawStopped();

  status = STATUS_DONE;
}


void mouseClicked() {
  if ( !gameOver && !diceAreRolling() && rollButton.wasClicked( mouseX, mouseY ) ) { 
    println( "ROLL" );
    status = STATUS_ROLLING;
    die1.roll();
    die2.roll();
  }
}

void draw() {
  table.draw();
  if (die1.isRolling()) {
    die1.avoidCollision(die2);
  } else if (die2.isRolling()) {
    die2.avoidCollision(die1);
  }
  die1.draw();
  die2.draw();

  if ( !diceAreRolling() && status == STATUS_ROLLING ) {
    status = STATUS_DONE;
    processRoll();
    updateStats();
    updateGUI();
  }
}

public boolean diceAreRolling() {
  return die1.isRolling() || die2.isRolling();
}

public void gameOver() {
  gameOver = true;
}

public void drawHeaders( ) {
  
  // TEXT EXAMPLE
  textSize(32);
  
  // WINS
  textAlign(LEFT, TOP);
  fill(255, 0, 0 );
  text( "Wins" , 5, 5);
  
  // LOSES
  textAlign(RIGHT, TOP);
  fill(255, 0, 0 );
  text( "Loses" , width-5, 5); 
  
  // SUM
  textAlign(LEFT, BOTTOM);
  fill(255, 0, 0 );
  text( "Sum" , 5, height-55);
  
  // POINTS
  textAlign(RIGHT, BOTTOM);
  fill(255, 0, 0 );
  text( "Points" , width-5,  height-55); 
  
  
}
