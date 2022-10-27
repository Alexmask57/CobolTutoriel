# Projet de test pour COBOL

***helloworld.cbl*** contient uniquement un helloworld.

***tuto.cbl*** contient la plupart des éléments de base vu dans [ce tutoriel](https://zestedesavoir.com/tutoriels/685/la-programmation-cobol/739_les-bases-du-cobol/3400_introduction/).

## Installer COBOL sur Mac à l'aide de brew

[Voir tutoriel](https://www.geeksforgeeks.org/how-to-install-cobol-on-macos/)

## Créer l'exécutable d'un fichier .cbl
```console
cobc -x -o <nom de l'executable> <nom du fichier>.cbl -free
```

*J'ajoute l'argument -free pour éviter de mettre les numéros de lignes* ([Voir le problème](https://codebugsblog.wordpress.com/2019/08/02/hello-cobol/))

## Lancer l'exécutable
```console
./<nom de l'executable>
```

