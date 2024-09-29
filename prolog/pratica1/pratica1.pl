salto('esq', Y, 'esq', Z, 'dir', B, R) :- Soma is Y + Z + B,
                                        term_string(Soma, Somastr),
                                        atom_concat('Salto valido ', Somastr, R).

salto('dir', Y, 'dir', Z, 'esq', B, R) :- Soma is Y + Z + B,
                                        term_string(Soma, Somastr),
                                        atom_concat('Salto valido ', Somastr, R).

salto(_, _, _, _, _, _, 'Salto invalido: Regras não atendidas').
        

main :- 
    read(X),
    read(Y),
    read(W),
    read(Z),
    read(A),
    read(B),
    salto(X, Y, W, Z, A, B, R),
    write(R), 
    nl, halt.