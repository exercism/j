load 'Generator/test_data.ijs'

cocurrent 'input'

create=: 3 : 0
  (' ' joinstring {. y) =: > {: y
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'test'

create=: 3 : 0
  (' ' joinstring {. y) =: {: y
  if. 2 1 -: $ input do.
    y_in=: ; {: input
  elseif. 0 = # input do. 
    y_in=: ''
  else.
    x_in=: {. {: input
    y_in=: }. {: input
  end.
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'testsuite'

create=: 3 : 0
  'name tests'=: (>@{. ; <@}.) y
  (('test_',":)each #\ tests)=: (conew&'test') every tests
  smoutput conames''
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'base'
a=:(format_tests 'leap') conew 'testsuite'
