cocurrent 'test'

create=: 3 : 0
  (' ' joinstring {. y) =: {: y
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'testsuite'

create=: 3 : 0
  (('test_',":)each i.# y)=: (conew&'test') every y
  0
)

destroy=: 3 : 0
  codestroy''
)
