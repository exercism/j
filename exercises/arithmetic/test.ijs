ops=. '+-%*'
nums=. ": &.> <"0 i.13

check_24=: dyad define
echo x;y
'a f b g c h d'=.;:y NB. this or another assertion will fail in presence of parens
echo 'evaulates to 24'
assert. 24 = ".y NB. evaluates to 24
echo 'uses allowed ops'
assert. *./ ops e.~ f,g,h NB. uses allowed operations
echo 'uses given numbers'
assert. (< ;._1 ' ',x) (-: & (/:~)) (a;b;c;d) NB. uses available numbers
)

test=: monad define
load'example.ijs'
try.
  '6 6 6 6'check_24 e1
  '2 3 3 9'check_24 e2
  '8 9 11 12'check_24 e3
  '2 2 3 8'check_24 e4
  '2 2 7 7'check_24 e5
  '5 5 11 10'check_24 e6
  '2 8 10 13'check_24 e7
catch. exit 1 end.
)
