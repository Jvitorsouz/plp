ehPrimo(X) :- X > 1, nextDiv(X,2,R), R=:=X.

nextDiv(X,I, X):- X mod I =:= 0, !.
nextDiv(X,I,R) :- I2 is I+1, nextDiv(X, I2, R).
