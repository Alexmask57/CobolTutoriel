IDENTIFICATION DIVISION.
PROGRAM-ID. ExempleEtiquette.
DATA DIVISION.
WORKING-STORAGE SECTION.
       77 a PIC 9(15).
       77 x PIC 99.
       77 b PIC 99.
       77 c PIC 99.
       77 i PIC 99.
       77 lignei PIC 99.
       77 nullValue PIC 99.

       77 note PIC 99v99.
       88 passable VALUE 10 THRU 11.99.
       88 assez_bien VALUE 12 THRU 13.99.
       88 bien VALUE 14 THRU 16.
       88 parfait VALUE 20.

SCREEN SECTION.
1 affiche-saisie-valeur.
    2 BLANK SCREEN.
    2 LINE 1 COL 1 VALUE 'Saisir une valeur : '.
    2 saisie PIC z(15) TO a REQUIRED.

1 affiche-valeur.
    2 LINE 2 COL 1 VALUE 'Votre valeur : '.
    2 PIC z(15) FROM saisie.

1 affiche-compute.
    2 LINE 3 COL 1.
    2 PIC 99 FROM a.
    2 COL 12 VALUE ' + '.
    2 PIC 99 FROM b.
    2 COL 18 VALUE ' = '.
    2 PIC 99 FROM c.

1 affiche-add.
    2 LINE 4 COL 1.
    2 VALUE 'Ajout de 5 avec la fonction ADD : '.
    2 PIC 99 FROM c.

1 affiche-nullValue.
    2 LINE 5 COL 1.
    2 VALUE 'Affichage valeur null initialisée à l aide de INITIALIZE : '.
    2 PIC 99 FROM nullValue.

1 affiche-valeursup.
    2 LINE 6 COL 1.
    2 VALUE 'La valeur est supérieure à 20'.
1 affiche-valeurinf.
    2 LINE 6 COL 1.
    2 VALUE 'La valeur est inférieure à 20'.
1 affiche-valeuregale.
    2 LINE 6 COL 1.
    2 VALUE 'La valeur est égale à 20'.

1 pla-pass.
         2 LINE 7 COL 1 VALUE 'C''est passable'.

1 pla-ab.
   2 LINE 7 COL 1 VALUE 'C''est pas mal'.

1 pla-b.
   2 LINE 7 COL 1 VALUE 'C''est bien'.

1 pla-p.
   2 LINE 7 COL 1 VALUE 'C''est parfait'.

1 pla-nul.
   2 Line 7 COL 1 VALUE 'Il n''y a pas de mention'.

1 affiche-x.
    2 LINE 8 COL 1.
    2 VALUE 'Affichage valeur x : '.
    2 PIC 99 FROM x.

1 affiche-i.
    2 LINE lignei COL 1.
    2 VALUE 'Affichage valeur i : '.
    2 PIC 99 FROM i.

PROCEDURE DIVISION.

SAISIE-VALEUR.
       DISPLAY affiche-saisie-valeur.
       ACCEPT saisie.
       DISPLAY affiche-valeur.

CALCUL-MOVE.
       MOVE 15 TO b.
       COMPUTE c = a + b.
       DISPLAY affiche-compute.

CALCUL-ADD.
       ADD 5 TO c.
       DISPLAY affiche-add.

NULLVALUEFONCTION.
       INITIALIZE nullValue.
       DISPLAY affiche-nullValue.

BOOLEEN.
       INITIALIZE nullValue.
       DISPLAY affiche-nullValue.

IFELSEENDIF.
       IF c < 20 THEN
           DISPLAY affiche-valeurinf
       ELSE 
           IF c = 20 THEN
               DISPLAY affiche-valeuregale
           ELSE 
               DISPLAY affiche-valeursup
           END-IF
       END-IF.

CALCUL-NOTE.
       MOVE 15 TO note.
       IF passable THEN
              DISPLAY pla-pass
       ELSE
              IF assez_bien THEN
                  DISPLAY pla-ab
              ELSE
                  IF bien THEN
                      DISPLAY pla-b
                  ELSE
                      IF parfait
                          DISPLAY pla-p
                      ELSE
                           DISPLAY pla-nul
                      END-IF
                  END-IF
              END-IF
       END-IF.

BOUCLER-N-FOIS.
       INITIALIZE x.

       PERFORM 5 TIMES
          COMPUTE x = x + 5
       END-PERFORM.
       DISPLAY affiche-x.

BOUCLE-BOULEEN.
       MOVE 1 TO i.
       INITIALIZE lignei.
       COMPUTE lignei = 8 + i.
       PERFORM UNTIL i > 10
          DISPLAY affiche-i
          COMPUTE i = i + 1
          ADD 1 TO lignei
       END-PERFORM.

STOP RUN.