decrementa(0):- halt.
decrementa(X):- X < 10, 
				write('Number: ' ), write(X), nl, 
				I2 is X-1, decrementa(I2).
