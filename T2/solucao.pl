pessoas(0, []) :- !.
pessoas(N, [(_Camisa,_Conta,_Nome,_Profissao,_Animal,_Esporte)|T]) :- N1 is N-1, pessoas(N1,T).

pessoa(1, [H|_], H) :- !.
pessoa(N, [_|T], R) :- N1 is N-1, pessoa(N1, T, R).

pista1(Pessoas) :- pessoa(4, Pessoas, (_,_,_,_,_,sinuca)).

pista2(Pessoas) :- pessoa(5, Pessoas, (_,_,_,_,_,futebol)).

pista3(Pessoas) :- pessoa(2, Pessoas, (_,_,_,_,_,basquete)).

pista4([(vermelho,_,_,_,_,volei)|_]).
pista4([_|T]) :- pista4(T).

pista5([(_,_,_,_,peixe,_),(_,_,_,_,_,natacao)|_]).
pista5([_|T]) :- pista5(T).

pista6([(branco,_,_,_,tartaruga,_)|_]).
pista6([_|T]) :- pista6(T).

pista7([(_,_,samuel,_,_,_),(_,_,_,bombeiro,_,_)|_]).
pista7([_|T]) :- pista7(T).

pista8(Pessoas) :- pessoa(5, Pessoas, (_,_,_,veterinario,_,_)).

pista9(Pessoas) :- pessoa(3, Pessoas, (_,_,_,pesquisador,_,_)).

pista10([(_,_,douglas,fotografo,_,_)|_]).
pista10([_|T]) :- pista10(T).

pista11(Pessoas) :- pessoa(5, Pessoas, (_,_,jose,_,_,_)).

pista12([(_,_,_,pesquisador,_,_),(_,_,augusto,_,_,_)|_]).
pista12([_|T]) :- pista12(T).

pista13([(_,_,douglas,_,cachorro,_)|_]).
pista13([_|T]) :- pista13(T).

pista14(Pessoas) :- pessoa(5, Pessoas, (_,telefone,_,_,_,_)).

pista15([(branco,agua,_,_,_,_)|_]).
pista15([_|T]) :- pista15(T).

pista16(Pessoas) :- pessoa(3, Pessoas, (_,luz,_,_,_,_)).

pista17([(_,celular,ronaldo,_,_,_)|_]).
pista17([_|T]) :- pista17(T).

pista18([(verde,_,_,_,passaro,_)|_]).
pista18([_|T]) :- pista18(T).

pista19(Pessoas) :- pessoa(1, Pessoas, (azul,_,_,_,_,_)).
pista19(Pessoas) :- pessoa(5, Pessoas, (azul,_,_,_,_,_)).

pista20([(_,_,_,_,_,sinuca),(_,_,_,_,gato,_)|_]).
pista20([_|T]) :- pista20(T).

pista21([(_,_,_,_,passaro,_),(_,_,_,_,_,sinuca)|_]).
pista21([_|T]) :- pista21(T).

consulta([(_,_,_,_,passaro,_)|_]).
consulta([_|T]) :- consulta(T).

solucao(Pessoas) :-
  pessoas(5, Pessoas),
  pista1(Pessoas),
  pista2(Pessoas),
  pista3(Pessoas),
  pista4(Pessoas),
  pista5(Pessoas),
  pista6(Pessoas),
  pista7(Pessoas),
  pista8(Pessoas),
  pista9(Pessoas),
  pista10(Pessoas),
  pista11(Pessoas),
  pista12(Pessoas),
  pista13(Pessoas),
  pista14(Pessoas),
  pista15(Pessoas),
  pista16(Pessoas),  
  pista17(Pessoas),
  pista18(Pessoas),
  pista19(Pessoas),
  pista20(Pessoas),
  pista21(Pessoas),
  consulta(Pessoas).
