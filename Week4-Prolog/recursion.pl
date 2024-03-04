father(grandpa, dad).
father(dad, son).

ancestor(Older, Younger) :-
    father(Older, Younger).
ancestor(Older, Younger) :-
    father(Older, Middle), ancestor(Middle, Younger).