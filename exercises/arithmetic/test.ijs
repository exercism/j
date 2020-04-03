load'arithmetic.ijs'

check_24=: dyad define
'a f b g c h d'=.;:y
assert 24 = ".y
assert *./ '+-%*' e.~ f,g,h
assert (< ;._1 ' ',x) (-: & (/:~)) (a;b;c;d)
)

test_e1=: monad define
'6 6 6 6'check_24 e1
)

test_e2=: monad define
'2 3 3 9'check_24 e2
)

test_e3=: monad define
'8 9 11 12'check_24 e3
)

test_e4=: monad define
'2 2 3 8'check_24 e4
)

test_e5=: monad define
'2 2 7 7'check_24 e5
)

test_e6=: monad define
'5 5 11 10'check_24 e6
)

test_e7=: monad define
'2 8 10 13'check_24 e7
)

REP=: e1;e2;e3;e4;e5;e6;e7