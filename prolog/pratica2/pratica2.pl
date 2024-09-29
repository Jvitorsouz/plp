
% Função que calcula o somatório
somatorio(_, Acc, 1, Acc). % Condição de parada
somatorio([Head|Tail], Acc, Id, R) :-
    Vezes is Id * Head, 
    NovoAcc is Acc + Vezes, 
    NewId is Id - 1, % decrementa a variável de controle
    somatorio(Tail, NovoAcc, NewId, R).

% Função que calcula o dígito verificador
divisao(X, R) :- Y is X mod 11, 
                 (Y < 2 -> R = 0 ; R is 11 - Y).

% Função que pega o penúltimo elemento da lista
penultimo([X,_], X).
penultimo([_|T], X) :-
    penultimo(T, X).

ultimo([X], X).
ultimo([_|Tail], X) :-
    ultimo(Tail, X).


% Função que verifica o D2
verificaD2(Lista, R) :- somatorio(Lista, 0, 11, SomatorioD2),
                        divisao(SomatorioD2, D2),
                        ultimo(Lista, UltimoNum),
                        (UltimoNum =:= D2 -> R = 'CPF valido' ; R = 'CPF invalido').

remove_last_element(List, Result) :-
    append(Result, [_], List).

% Mapeia cada char para número
char_to_number(Char, Num) :-
    atom_number(Char, Num).

% Regra principal
main :- 
    read_line_to_string(user_input, X),                    % Lê o CPF
    string_chars(X, Y),
    remove_last_element(Y, R),    % Converte para lista de caracteres
    maplist(char_to_number, R, F),   % Mapeia para números
    somatorio(F, 0, 10, SomatorioD1),
    divisao(SomatorioD1, D1),       % Calcula o D1
    penultimo(F, PenultimoNum),       % Pega o penúltimo dígito
    (PenultimoNum =:= D1 -> verificaD2(F, Result), write(Result) ; write('CPF invalido')), % Verifica
    nl, halt.

