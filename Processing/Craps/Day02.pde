void processRoll( ) {

  int total = die1.getNumDots() + die2.getNumDots();
  
        // PHASE1: FIRST ROLL OF THE DIE
        if ( point == 0 ) {
            
            switch( total ) {
                case 7:
                case 11:
                    result = USER_WINS;
                    break;
                case 2:
                case 3:
                case 12:
                    result = USER_LOSS;
                    break;
                default:
                    // ROLL AGAIN
                    point = total;
                    result = USER_ROLL_AGAIN;
            }

        } else {

            if ( total == 7 ) {
                result = USER_LOSS;
                point = 0;
            } else if ( total == point ) {
                result = USER_WINS;
                point = 0;
            }

        }

}
