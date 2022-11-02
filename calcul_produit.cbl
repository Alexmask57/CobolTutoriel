IDENTIFICATION DIVISION.
PROGRAM-ID. CALCULPRODUIT.
DATA DIVISION.
WORKING-STORAGE SECTION.
       77 nbSaisie1 PIC 9(3).
       77 nbSaisie2 PIC 9(3).
       77 res PIC 9(6).

SCREEN SECTION.
1 demande-valeur1.
    2 BLANK SCREEN.
    2 LINE 3 COL 10.
    2 VALUE 'Saisir une première valeur : '.
    2 saisie PIC 9(3) TO nbSaisie1 REQUIRED.
1 affiche-valeur1.
    2 LINE 4 COL 10 VALUE 'Votre valeur : '.
    2 PIC 9(3) FROM saisie.
1 demande-valeur2.
    2 LINE 5 COL 10.
    2 VALUE 'Saisir une seconde valeur : '.
    2 saisie2 PIC 999 TO nbSaisie2 REQUIRED.
1 affiche-valeur2.
    2 LINE 4 COL 10 VALUE 'Votre valeur : '.
    2 PIC 9(3) FROM saisie2.
1 affiche-valeur.
    2 LINE 6 COL 10 VALUE 'Résultat : '.
    2 PIC 999999 FROM res.
 
PROCEDURE DIVISION.
DISPLAY demande-valeur1.
ACCEPT nbSaisie1.
DISPLAY affiche-valeur1
DISPLAY demande-valeur2.
ACCEPT nbSaisie2.
DISPLAY affiche-valeur2.
initialize res.
COMPUTE res = nbSaisie1 * nbSaisie2.
DISPLAY affiche-valeur.
STOP RUN.