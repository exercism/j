load'example.ijs'

test_pascal_empty=: monad define
assert pascal 0-:''
)

test_pascal_1=: monad define
assert pascal 1-:1
)

test_pascal_2=: monad define
assert pascal 2-:2 2$1 0 1 1
)

test_pascal_3=: monad define
assert pascal 3-:3 3$1 0 0 1 1 0 1 2 1
)

test_pascal_5=: monad define
assert pascal 5-:5 5$1 0 0 0 0 1 1 0 0 0 1 2 1 0 0 1 3 3 1 0 1 4 6 4 1
)

REP=: pascal f.