# SHERLOCK_13


![3](https://github.com/user-attachments/assets/6d2b8159-e2bc-4e3f-a2f2-192cf981a8cc)



Jeu d'enquête multijoueur où 4 joueurs doivent trouver le coupable en échangeant des indices. Développé en C avec SDL2 pour l'interface client.  

##  Prérequis  

- **Compilateur C** : `gcc`  
- **SDL2** : Bibliothèques graphiques  
- **Make** : Pour utiliser le Makefile  

## Compilation
make  
## Lancement du jeu
Démarrez le serveur  
./server 8080  
Lancez 4 clients (dans des terminaux séparés) :  
./sh13 localhost 8080 127.0.0.1 1234 Joueur1  
./sh13 localhost 8080 127.0.0.1 1235 Joueur2  
./sh13 localhost 8080 127.0.0.1 1236 Joueur3  
./sh13 localhost 8080 127.0.0.1 1237 Joueur4  

## Paramètres :
localhost 8080 : IP/port du serveur  
127.0.0.1 123X : IP/port unique pour chaque client  

##Architecture Technique
![architecture technique](https://github.com/user-attachments/assets/baa7412f-6387-4f16-b204-463774cb6fa1)


## Comment jouer
Connexion :  

Cliquez sur "Connect" dans chaque client.  
Tour par tour :  
Sélectionnez un symbole (en haut) et/ou un joueur (à gauche).  
Cliquez sur "Go" pour :  
Symbole seul : Demander qui possède ce symbole (O)  
Symbole + Joueur : Interroger un joueur spécifique (S)  
Suspect : Accuser un personnage (G)

Victoire :
Trouvez le coupable pour gagner !

