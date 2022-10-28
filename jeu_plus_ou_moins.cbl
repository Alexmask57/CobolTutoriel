IDENTIFICATION DIVISION.
PROGRAM-ID. JEUPLUSOUMOINS.
DATA DIVISION.
WORKING-STORAGE SECTION.
       77 nbSaisie PIC 999.
       77 nbRamdom PIC 999.
       77 seed PIC 9(8).
       77 numLigne PIC 9(8).

SCREEN SECTION.
1 demande-valeur.
    2 LINE 3 COL 10 VALUE 'Saisir une valeur : '.
    2 PIC 999 TO nbSaisie REQUIRED.
1 valeur-inf.
    2 BLANK SCREEN.
    2 LINE 2 COL 10 VALUE 'La valeur saisie est plus petite que la valeur recherchée'.
1 valeur-sup.
    2 BLANK SCREEN.
    2 LINE 2 COL 10 VALUE 'La valeur saisie est plus grande que la valeur recherchée'.
1 valeur-trouvee.
    2 LINE 4 COL 10 VALUE 'BRAVO !!! Vous avez trouvé le nombre aléatoire : '.
    2 PIC z(15) FROM nbRamdom.

PROCEDURE DIVISION.

INITIALISATION.
       MOVE 1 TO numLigne.
       initialize nbRamdom.
       MOVE FUNCTION CURRENT-DATE(9:8) TO seed.
       COMPUTE nbRamdom = FUNCTION RANDOM (seed) * 100 + 1.
       
RECHERCHENB.
       PERFORM UNTIL nbSaisie = nbRamdom
          DISPLAY demande-valeur
          ACCEPT nbSaisie
          ADD 1 TO numLigne
       
          IF nbSaisie < nbRamdom
               DISPLAY valeur-inf
               ADD 1 TO numLigne
          END-IF
          IF nbSaisie > nbRamdom
               DISPLAY valeur-sup
               ADD 1 TO numLigne
          END-IF
       END-PERFORM.

FIN.
       DISPLAY valeur-trouvee.

STOP RUN.