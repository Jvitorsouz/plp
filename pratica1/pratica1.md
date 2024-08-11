Alguns estudantes da UFCG desenvolveram um jogo de cartas elementais. Nesse jogo, as cartas possuem tanto um elemento quanto um poder numérico associado. 
Os elementos são os seguintes: fogo, planta e água.

A relação entre elementos é descrita da seguinte forma:
fogo ganha de planta;
agua ganha de fogo;
planta ganha de agua.
Desenvolva um programa em Haskell que determina qual carta ganha da outra numa batalha, sabendo que a comparação entre cartas é dada da seguinte forma: 
Primeiro, são comparados os elementos. 
Se um elemento ganhar do outro, a carta é vitoriosa. 
Se os elementos forem iguais, os poderes das cartas são comparados. 
Se ainda assim os poderes forem iguais, o resultado é um empate.
O programa deve receber o elemento e o poder da primeira carta e, em seguida, o elemento e o poder da segunda.
Teste Público:
     entrada:
       fogo
        2
        planta
        4
     saída:
       vencedor: carta 1
