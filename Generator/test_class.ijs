load 'Generator/test_data.ijs'

cocurrent 'test'

create=: 3 : 0
  (' ' joinstring {. y) =: {: y
  y_in=: {: input
  if. 1 -: # y_in do.
    y_in=: ; y_in
  elseif. 2 -: # y_in do.
    'y_in x_in'=: y_in
  end.
  description=: '  Description@.1 (''' , description , ''')'
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'testsuite'

create=: 3 : 0
  'name tests'=: (>@{. ; <@}.) y
  name        =: name rplc ' ';'_'
  (('test_',":)each #\ tests)=: (conew&'test')every tests
  all_tests=: {{ y~ }}each'test_' nl 0
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'testwriter'

create=: 3 : 0
  load 'Generator/test_data.ijs'
  suite=: conew&'testsuite' (format_tests y)
  test_order=: #\ tests__suite
  test_numbers=: (_2 {.!.'0' ":)each test_order
  ignore_flags=: joinstring"1 (('test_', name__suite, '_', ])each ,. ([: ('_ignore=: '  , ":)each 0 , 1 #~ <:@#)) test_numbers
  test_names  =: (name__suite, '_test_', '  =: monad define' ,~ ])each test_numbers
  descriptions=: 0
  order       =: {{'  Order@.1 (', (":y), ')'}}each test_order
  helpers=: 0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'base'
a=:('leap') conew 'testwriter'
b=:(format_tests 'leap') conew 'testsuite'

