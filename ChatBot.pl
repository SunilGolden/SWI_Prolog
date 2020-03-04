alter([], []).

alter([A | C], [B | D]) :-
	change(A, B),
	alter(C, D).

change(you, i).
change(are, [am, not]).
change(french, nepali).
change(do, no).
change(X, X).


/*
Query

?- alter([do, you, know, french], Reply).
Reply = [no, i, know, nepali] .

?- alter([you, are, mad], Reply).
Reply = [i, [am, not], mad] .

?- alter([do, you, love, german], Reply).
Reply = [no, i, love, german] .

?- alter([do, you, speak, french], Reply).
Reply = [no, i, speak, nepali] .

?- alter([you, are, a, robot], Reply).
Reply = [i, [am, not], a, robot] .

*/
