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
  'name tests'=: (>@{. ; <@}.) y
  (('test_',":)each #\ tests)=: (conew&'test') every tests
  0
)

destroy=: 3 : 0
  codestroy''
)


