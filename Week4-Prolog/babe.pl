animal(babe, pig).
likes(pig, mud).

animal_likes(Animal, Thing) :- animal(Animal, Type), likes(Type, Thing).