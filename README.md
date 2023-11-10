# 2023_1D_S5_SystNum_LENARD_TRIKI

***LENARD DUNSTAN Kishor***
***TRIKI Ahcène***
***1DA***


**Systèmes Numériques**

**TP1**

**4.1. Découverte du composant : MCP23S17**

- Quel est son rôle ?
Le MCP23S17 est un port d'extension d'E/S de 16 bits à usage général qui utilise une interface SPI.

- Combien d'entrées/sorties (GPIO) peut-il gérer simultanéments ?
Le MCP23S17 peut gérer jusqu'à 16 entrées/sorties GPIO.

- Dans notre application, ces GPIO sont-ils configurés en entrée ou en sortie ?
Les GPIO peuvent être configurés comme des entrées ou des sorties en fonction de nos besoins. 

- A quelle fréquence maximale peut-on communiquer avec ce composant ?
  Avec une fréquence maximale de 10 MHz, on peut communiquer avec un composant en SPI.

- Listes les pins qui sont reliés au micro-controleur et expliciter leur rôle.
Les pins qui sont reliés au micro-controleur sont :
       - les pins nécessaires à la communication en SPI :
                - CS (Chip Select): Sélection du composant esclave pour la communication SPI.
                - SCK (Serial Clock): Horloge
                - MISO (Master In Slave Out): Données entrantes du MCP23S17 vers le microcontrôleur.
                - MOSI (Master Out Slave In): Données sortantes du microcontrôleur vers le MCP23S17.
  

- Etablir un tableau d'association entre les pins du composant et celle du micro-controleur.
PA4 : CS (Pin 11)
PA5 : SCK (Pin 12)
PA6 : MISO (Pin 14)
PA7 : MOSI (Pin 13)
RESET (Pin 18)

- A quoi servent les pins A0, A1 et A2 ? Qu'est ce que l'opcode ?
  Ces broches sont reliés au GND et permettent de configurer l'adresse du MCP23S17. En configurant ces broches à la masse ou à VDD, vous pouvez sélectionner une adresse unique parmi huit adresses possibles, permettant la connexion de plusieurs MCP23S17 sur le même bus SPI.
L'opcode est le code binaire ou mnémonique qui correspond à une instruction machine spécifique, permettant au processeur de comprendre et d'exécuter des opérations spécifiques. L'opcode est utilisé pour sélectionner le type d'opération (lecture/écriture) et l'espace de mémoire.


- A quoi servent les pins INTA et INTB ?
Les pins INTA (Broche 18) et INTB (Broche 19) sont utilisées pour les interruptions. Elles signalent au microcontrôleur qu'un changement d'état sur les ports d'entrée/sortie a eu lieu. Donc le programme s'arrête et effectue un autre tâche et reviens dès qu'elle a finit la tâche à l'endroit où s'est arrêté le programme.


- Quelle doit-être la valeur de sortie d'une pin pour allumer la led ?
La valeur de sortie du pin qui permet d'allumer la led doit être à 0V.


- A quoi servent les résistances R501 à R516 ? Pourquoi ne sont-elles pas toutes de la même valeur ?
Ces résistances permettent de limiter le courant à travers les LEDs.
Les valeurs différentes sont dues à des besoins de courant différents pour chaque LED.


**Le GPIO Expander (MCP23S17) possède une mémoire (RAM) de 16 octets (voir table 3-1). Nous avons besoin de configurer uniqument les registres IODIRA, IODIRB, GPIOA et GPIOB.**
-  A quoi correspondent ces registres ?
Les registres IODIRA et IODIRB sont utilisés pour configurer les broches comme des entrées ou des sorties.
Les registres GPIOA et GPIOB sont utilisés pour lire ou écrire des données sur les broches.

-  Quels valeurs doivent ils prendre pour que toutes les leds soient éteintes ?
On sait que les registres I0DIRA et I0DIRB sont utilisés pour configurer les pins en entrées ou en sorties donc, pour que les LEDs s'allument, on doit configurer ces registres comme des sorties, c'est-à-dire les mettre en 0. Et on doit configurer les registres GPIOA et GPIOB avec la valeur binaire 00000000 pour éteindre toutes les LEDs.


-  Quels valeurs doivent ils prendre pour que toutes les leds soient allumées ?
Dans ce cas, il faut configurer les registres IODIRA et IODIRB pour définir toutes les broches comme des sorties, c'est-à-dire les mettres en 0, et configurer les registres GPIOA et GPIOB avec la valeur binaire 11111111 pour allumer toutes les LEDs.


-  Pour que seule la led D508 soit allumée ?
Pour allumer la D508, il faut dans un premier temps configurer les registres IODIRA et IODIRB comme des sorties, 0. Et les registres GPIOA et GPIOB avec la valeur binaire 00000001 pour allumer seulement D508.


**Afin de bien maitriser quelles données vous devez envoyer au signal, lire la section 3.2.3.1.**


![image](https://github.com/kishor1lenard/2023_1D_S5_SystNum_LENARD_TRIKI/assets/150352720/57648590-9e93-48b4-aa63-9473075c29b3)
![image](https://github.com/kishor1lenard/2023_1D_S5_SystNum_LENARD_TRIKI/assets/150352720/0db0dd7d-6313-4ff4-ba58-06840ebb89ba)

- Etablir la séquence de valeur à envoyer pour :
        - Configurer l'ensemble des pins correctements :

**Read : 1**
**Write : 0**

***D'abord Adresse (0100 0001)***
***Ensuite Device Slave (IODIRA, IODIRB)***
***A la fin, (GPIOA, GPIOB)***

A2, A1, et A0 sont reliés à la masse donc vallent 0. Donc l'adresse du device est 01000001

On configure :
IODIRA: 01000000 00000000 00000000
IODIRB: 01000000 00000001 00000000

        - Eteindre toute les leds puis allumer toutes les leds.
GPIOA : 01000000 00010010 00000000
GPIOB : 01000000 00010011 00000000

GPIOA : 01000000 00010010 11111111
GPIOB : 01000000 00010011 11111111

     

**4.2 Paramétrage du microcontrôleur**

![image](https://github.com/kishor1lenard/2023_1D_S5_SystNum_LENARD_TRIKI/assets/150352720/0707deee-91e1-43d0-8d67-af4f62685c14)



**4.3. Organiser son code**










  
