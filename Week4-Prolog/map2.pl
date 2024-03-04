color(red).
color(blue).
color(green).

different(X, Y) :- \+(X = Y).

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
    color(Alabama), color(Mississippi), color(Georgia), color(Tennessee), color(Florida),
    different(Mississippi, Alabama),
    different(Mississippi, Tennessee),
    different(Alabama, Tennessee),
    different(Alabama, Georgia),
    different(Alabama, Florida),
    different(Georgia, Florida),
    different(Georgia, Tennessee).