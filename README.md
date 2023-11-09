# 2023_1D_S5_SystNum_LENARD_TRIKI

LENARD DUNSTAN Kishor
TRIKI Ahcène
1DA


Systèmes Numériques

TP1

4.1. Découverte du composant : MCP23S17

- Quel est son rôle ?
Le MCP23S17 est un port d'extension d'E/S 16 bits à usage général.

- Combien d'entrées/sorties (GPIO) peut-il gérer simultanéments ?
Le MCP23S17 peut gérer jusqu'à 16 entrées/sorties GPIO.

- Dans notre application, ces GPIO sont-ils configurés en entrée ou en sortie ?
Les GPIO peuvent être configurés comme des entrées ou des sorties en fonction de nos besoins. 

- A quelle fréquence maximale peut-on communiquer avec ce composant ?
  Avec une fréquence maximale de 10 MHz, on peut communiquer avec un composant en SPI.

- Listes les pins qui sont reliés au micro-controleur et expliciter leur rôle.

![image](https://github.com/kishor1lenard/2023_1D_S5_SystNum_LENARD_TRIKI/assets/150352720/b8df26a8-23b6-4226-885a-921765bc51f4)

- Etablir un tableau d'association entre les pins du composant et celle du micro-controleur.


- A quoi servent les pins A0, A1 et A2 ? Qu'est ce que l'opcode ?


- A quoi servent les pins INTA et INTB ?


- Quelle doit-être la valeur de sortie d'une pin pour allumer la led ?


- A quoi servent les résistances R501 à R516 ? Pourquoi ne sont-elles pas toutes de la même valeur ?



       
       
    1. 
    2. Pins A0, A1, A2 et opcode: Ces pins permettent de configurer l'adresse I2C du MCP23S17, définissant ainsi son adresse sur le bus. L'opcode est utilisé pour sélectionner le type d'opération (lecture/écriture) et l'espace de mémoire.
    3. Pins INTA et INTB: Ces pins sont des broches d'interruption qui peuvent être configurées pour signaler des changements d'état sur les GPIO.
    4. Valeur de sortie pour allumer la LED: Cela dépend de la configuration spécifique de votre circuit. Généralement, une sortie à niveau bas (0V) peut allumer une LED.
    5. Résistances R501 à R516: Ces résistances sont probablement présentes pour limiter le courant à travers les LEDs ou pour définir les niveaux logiques. Les valeurs différentes peuvent être dues à des besoins de courant différents pour chaque LED ou GPIO.




