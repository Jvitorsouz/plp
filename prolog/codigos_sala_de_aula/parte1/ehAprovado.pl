ehAprovado(X,Y,Z,R):- Media is (X+Y+Z)/3, situacao(Media,R).

situacao(X,'Aprovado'):- X >= 7, !.
situacao(X, 'Reprovado'):- X < 4, !.
situacao(_, 'Final').








