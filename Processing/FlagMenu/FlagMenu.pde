// Name: Jamie
// Date: Nov 17, 2018
// Ver : v0.1.1
// Description:  
//     This program will show you one of six flags in a size that you pick.

//CONSTANTS  

//VARIABLES
int flagNumber;
float sizeFactor;
//OBJECTS (LATER)
void setup()
{

  //SPLASH PAGE

  println ( "Flag Directory" );
  println ( "-----------------------------");
  println ( "Please Select A Flag To View");
  println ( "1: Norway");
  println ( "2: Thailand");
  println ( "3: Myanmar");
  println ( "4: Sudan");
  println ( "5: Turkey");
  println ( "6: Seychelles");
  println ( "7: Dwight");
  
  //BACKGROUND FUNCTIONS
  size (1400, 700);
  surface.setVisible(false);
  noStroke();

  //INPUT
  flagNumber = getInt ( "Enter which flag you want to see(input a number)." );
  sizeFactor = getFloat ( "Enter how large you want the flags to be(number between 1 and 50)." );

  //PROCESSING/OUTPUT
  //Norway
  if ( flagNumber == 1 ) {
    float xLoc = sizeFactor *22;
    float yLoc = sizeFactor * 16;
    surface.setVisible(true);
    //RED
    fill(239, 43, 45);
    rect(0, 0, xLoc, yLoc);

    //WHITE HORIZANTAL
    fill(255, 255, 255);
    rect(0, yLoc*1/3, xLoc, yLoc*1/3);

    //WHITE VERTICAL
    fill(255, 255, 255);
    rect(xLoc*3/11, 0, xLoc*2/11, yLoc);

    //BLUE HORIZONTAL
    fill(0, 40, 104);
    rect(0, yLoc*3/7, xLoc, yLoc*1/7);

    //BLUE VERTICAL
    fill(0, 40, 104);
    rect(xLoc*7/22, 0, xLoc*1/11, yLoc);
  }

  //Thailand  
  if ( flagNumber == 2 ) {
    float xLoc = sizeFactor * 21;
    float yLoc = sizeFactor * 14;
    surface.setVisible(true);
    //RED
    fill(165, 25, 49);
    rect(0, 0, xLoc, yLoc);

    //WHITE
    fill(255, 255, 255);
    rect(0, yLoc*1/6, xLoc, yLoc*2/3);

    //BLUE
    fill(45, 42, 74);
    rect(0, yLoc*1/3, xLoc, yLoc*1/3);
  }

  //Myanmar
  if ( flagNumber == 3 ) {
    float xLoc = sizeFactor * 21;
    float yLoc = sizeFactor * 14;
    surface.setVisible(true);
    //Yellow
    fill(254, 203, 0);
    rect(0, 0, xLoc, yLoc);

    //GREEN
    fill(52, 178, 51);
    rect(0, yLoc*1/3, xLoc, yLoc*2/3);

    //BLACK
    fill(234, 40, 57);
    rect(0, yLoc*2/3, xLoc, yLoc*1/3);

    //STAR
    fill (255);
    star (xLoc/2, yLoc/2, sizeFactor*2.2, sizeFactor*5, 5);
  }

  //Sudan
  if ( flagNumber == 4 ) {
    float xLoc = sizeFactor * 22;
    float yLoc = sizeFactor * 11;
    surface.setVisible(true);
    //RED
    fill(210, 16, 52);
    rect(0, 0, xLoc, yLoc);

    //WHITE
    fill(255, 255, 255);
    rect(0, yLoc*1/3, xLoc, yLoc*2/3);

    //BLACK
    fill(0, 0, 0);
    rect(0, yLoc*2/3, xLoc, yLoc*1/3);

    //GREEN TRIANGLE
    fill (0, 114, 41);
    triangle (0, 0, 0, yLoc, xLoc/3, yLoc/2);
  }

  //Turkey
  if ( flagNumber == 5 ) {
    float xLoc = sizeFactor * 21;
    float yLoc = sizeFactor * 14;
    surface.setVisible(true);
    //RED
    fill(227, 10, 23);
    rect(0, 0, xLoc, yLoc);

    //WHITE CIRCLE
    fill(255);
    ellipse(xLoc*2/5, yLoc/2, sizeFactor*8, sizeFactor*8);

    //RED CIRCLE
    fill(227, 10, 23);
    ellipse(xLoc*4/9, yLoc/2, sizeFactor*6.5, sizeFactor*6.5);

    //STAR
    fill (255);
    star (xLoc*3/5, yLoc/2, sizeFactor*1.5, sizeFactor*0.6, 5);
  }

  //Seychelles
  if ( flagNumber == 6 ) {
    float xLoc = sizeFactor * 22;
    float yLoc = sizeFactor * 11;
    surface.setVisible(true);
    //RED
    fill(214, 40, 40);
    rect(0, 0, xLoc, yLoc);

    //WHITE
    fill(255, 255, 255);
    triangle(0, yLoc, xLoc, yLoc*1/3, xLoc, yLoc*2/3);

    //GREEN
    fill(0, 122, 61);
    triangle(0, yLoc, xLoc, yLoc*2/3, xLoc, yLoc);

    //YELLOW
    fill(252, 216, 86);
    triangle(0, yLoc, xLoc*1/3, 0, xLoc*2/3, 0);

    //Blue
    fill(0, 63, 135);
    triangle(0, yLoc, 0, 0, xLoc*1/3, 0);
  }
   //Dwight Schrute
  if ( flagNumber == 7 ) {
    println ("                               `/+o/.");
    println ("                           .+sso+/:oydyo/:-:+shdys/    `-:.     `-/+o+/`");
    println ("                       `/sdh+/::/::ss:`ymdhyso//hmMNyhNNms+ososys+/-:/shms/`");
    println ("                    .+hNNy++oo+/.`.--/osyhdmNNMMMMMMMMMNdsssssoso+hhhhsoo+ymdo.");
    println ("                  -smNy/+ymmmmmNNNNMNMMMMMNNNmmNMMMMMMMMMho:///:--shydNMMNdo-sNs`");
    println ("                -hNd+-sNMNdmNMMMNNNMNNNMMMddNMMNNmNMMMMMMNmy+///::/:-:/++ymNNdmMN:");
    println ("              `sNMs`+NMNNNMMMMNNNMMMMMMNmhyso///+ohMmoNMmoo+/::/-:oymNNmsosshdhmMM/");
    println ("             +NMMy`hMMMhyNMNMMNNNMds:-.`-:syddmNMMmyo`+yMMho:..-+//++omMNNNNNNNmdNMs");
    println ("           :mMMMh`yMNdodNNNMNMMMs.+sdmmmmmdhNMMMNhy/..`-syhNmdyssso+/.`:yNMMMMNMNMMMy");
    println ("          :NMNh:-+MMh+mdNNNNNMd.+NNMMMMMMMMmho:-......:--::ohNMMMMMMNmNy/.oNMNmNMNMMMs");
    println ("         :NMm+/dmmMNydyhNdhMMN.yMMNmhysso+:-``        ```.--:/+sdMMMMMNNNm:-mMNNNNMMMMy");
    println ("        :NMy/hNMMMMmNddsh/NmMy-Mms:..`.--.`                ``..-.:yNMMMMNMNs:NMMMNNNNMMy");
    println ("       :NNy/mMMMMMMmNMMshsNdMo/d-...``                       ```...-yMMMNNMd`NMMNMdmoNMM-");
    println ("      /mMm+NMNNMMNMNNNNNNNNMMmom/                              ```..`+NMMMMh`NMMMMNNdhNMh");
    println ("     +NMMmmMNyNMNMMMMMNmmmNMdNNyh+.                             ``````/NMMM::MMMMNMNNmNMN");
    println ("    +MNNMMMNymMNNMMMNNNNNMh+:+dNmddhyoo+`                        ````.`sMMN`sMNNMNNMNNNNN");
    println ("    dNNNMNNddMNNNNNNmymMN+---::/shdhyyy:                         `````..hMo.NMNMNMMMNmMMd");
    println ("    dNNNMMNmNNNmmNMNdNMM+.-..----.-:::.                          ````...:mh/NMMMNMMMNNMMh");
    println ("    sMNNMMNMNNmyNMNdmNMo--.....                                  ``...---:dNMNMMNMMNNNMMN.");
    println ("    :NNNMMMNNNsmMNmMNMy...`.-.`                                    `.-----:odNmmNMMMMMNMMo");
    println ("    .NMMMmMMMNmMNNNNMm:-.```..                                       ``-----:/o//dMMMNMMMm");
    println ("    .NMMMNMMNMMNMNNNNs--.``...                                          `....---..dMNMMMMM`");
    println ("    .NNMMNNNNNMMMNNNN:-...`...                                           ```.....`+MMMMMMM.");
    println ("    .MNNNNNNNMMMMMNNy.......-.`                                          ``..---.`.NMMMMMM`");
    println ("    `NMNMMNNNMMNMMMm-...`.-----.`                                        ``.-----.`yMMMMMd");
    println ("     dMMMNNNNMMNNMMo`-....----..`          ``                      `.`` ```.------`:MMMMM-");
    println ("     /MMNMNNNMMNMMN-`.`..-.--.` `--..-:-.-.``..``               ```.-......--.----..NMMMd");
    println ("     `mMNMNNMMMNNMN.``...-.-../hddyysyhysyyso+--/::-..--...----:::+syyyyhhdddy+:-.-.hMMM:");
    println ("      :NNNNNNMMMMMN.`....--.:dy/:-.-/+++ososss+/:+shyo/::/:+os+:+syosyoso+/://ss//.`+MMm");
    println ("       +MdmNNMNMMMN+.--....:+-.-:+ooymdddmdhyo++ss+/yMo.`..oNsyhdhmdmmmmNmdo:-.--:+-:MM/");
    println ("      `y/..-+dNNMMMo-shhyo++--+sso-`dsymoso.smyso+//.od+/:/ho+yyhd/ymsNhyy./yy/``.-hhmm`");
    println ("      .s+md+- oMMMm``.-/sy//-.+/s.  odys+s-  /shyso+.sm+:::yd/hh+:`.hyyhy- `/y/.` `hs/s`");
    println ("      -oyMNyhs:NMMo     `.-`         .---` ``.`/::+s/ms````-mo+:`````.--` ````     `sNm`");
    println ("      `hsMh`.hymMM:       `-         `          .:+:hy`     od:-`                  .+sM-``");
    println ("       o+o/``-/mMM-        .-                ``.```hy`       s.`.`                 -/+M+``");
    println ("       .s `./NMMMM-         --            ````  `:ho`        .s`  ```             ./.+My`");
    println ("        /: `+MMdMM/          -.  `       `   ..+++-           :d/.             ``:o-`oMy");
    println ("         o. .sdNMMm`            `--:://+//.`-///:.           `.ohooo:-.`` `.-:+//:..`hMy");
    println ("         `s```.yMMMs                  ```     .y+  `::.:----.-``o:-::/:::--:::-----..mMo");
    println ("          :s` `oMNMN-                         :N+  -NNhy/:/sds./:..----------------`/MN.");
    println ("           +o``-NMNMd`                      `-syyoo++/.++:so/+yN+..--....-..-....--`dM+");
    println ("            +:.`oMNNN`                     .:-` `.::.` `--..---/+/---.```........-.:d:");
    println ("             ./++Ny::`                   `--`          .--..-----::-..```......---.s.");
    println ("               `:os.--`                  .`            `.. ``.------.`.```..-----.:o");
    println ("                 `h-..`                 ``        .:syy/-/ydho-.--...`````.------.+.");
    println ("                  +o`.`                        ./ymNNNNNNNmmNNNh:....``.```.-----:s");
    println ("                  `h-`.                    -/+oyo/:----:---.--:+sso:........--::-+:");
    println ("                   /d...                 `.++:  -:--/+:/oo+o++-.``--.....-----:-:y");
    println ("                   `Md:.`                ``     `-:/+ooooo+/-........-----------yo");
    println ("                    mNNs-`                     `..-/oo+://:/oo:......----------os");
    println ("                    h:+md:.                  ...``.`         `------.---------++");
    println ("                   `h..-+ddo.`                            ``.----------------s:");
    println ("                    h` .--/ydy:`                   `...--------------------+y.");
    println ("                    h`   ..--+yds+.`               `....----------------:+dN`");
    println ("                   `y      `.-.-:sdhs:.`    `...````..----------------:smsdm");
    println ("                   `h         .--..-+ymdy+/:----:----------------.-/shs+.`os");
    println ("                   `h           `..--..:sdmmhyo/::----------::/+syhy/....`+-");
    println ("                   -y              `..--..--/oosyyyhhhyyyssoooo/:.`...`.` /-");
    println ("                   `.                  `..--.......................````   +`");
    println ("                                          `...------..-.........``");
    println ("                                              ``..-.--........``");
    println ("                                                   ```..```");
  }
}
//Code For Star
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
