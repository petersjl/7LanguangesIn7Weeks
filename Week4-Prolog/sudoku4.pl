valid([]).
valid([Head|Tail]) :-
    fd_all_different(Head),
    valid(Tail).

sudoku(Puzzle, Solution) :-
    Solution = Puzzle,
    Puzzle = [S11, S12, S13, S14,
              S21, S22, S23, S24,
              S31, S32, S33, S34,
              S41, S42, S43, S44],

    fd_domain(Solution, 1, 4),

    Row1 = [S11, S12, S13, S14],
    Row2 = [S21, S22, S23, S24],
    Row3 = [S31, S32, S33, S34],
    Row4 = [S41, S42, S43, S44],

    Col1 = [S11, S21, S31, S41],
    Col2 = [S12, S22, S32, S42],
    Col3 = [S13, S23, S33, S43],
    Col4 = [S14, S24, S34, S44],

    Box1 = [S11, S12, S21, S22],
    Box2 = [S13, S14, S23, S24],
    Box3 = [S31, S32, S41, S42],
    Box4 = [S33, S34, S43, S44],

    valid([Row1, Row2, Row3, Row4,
           Col1, Col2, Col3, Col4,
           Box1, Box2, Box3, Box4]).

write_solution(Solution) :-
    Solution = [S11, S12, S13, S14,
              S21, S22, S23, S24,
              S31, S32, S33, S34,
              S41, S42, S43, S44],
    write([S11,S12,S13,S14]),nl,
    write([S21,S22,S23,S24]),nl,
    write([S31,S32,S33,S34]),nl,
    write([S41,S42,S43,S44]),nl.

run :- sudoku(
    [_,_,2,3,
     _,_,_,_,
     _,_,_,_,
     3,4,_,_], 
     Solution), write_solution(Solution).

:- initialization(run).