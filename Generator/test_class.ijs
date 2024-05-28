load 'Generator/test_data.ijs'

cocurrent 'test'

create=: 3 : 0
  (' ' joinstring {. y) =: {: y
  x_in=: ''
  y_in=: {: input
  if. 1 -: # y_in do.
    y_in=: ; y_in
  elseif. 2 -: # y_in do.
    'y_in x_in'=: y_in
  end.
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
  callfrom=: {{ (x , '_' , (": y) , '_')~ }}
  suite       =: conew&'testsuite' (format_tests y)
  test_order  =: #\ tests__suite
  test_numbers=: (_2 {.!.'0' ":)each test_order

  ignore_flags=: joinstring"1 (('test_', name__suite, '_', ])each ,. ([: ('_ignore=: '  , ":)each 0 , 1 #~ <:@#)) test_numbers
  test_names  =: (name__suite, '_test_', '  =: monad define' ,~ ])each test_numbers
  
  descriptions=: {{ 
    desc=. 'description_' callfrom y
    '  Description@.1 (''' , desc , ''')'
  }}each all_tests__suite
  
  order       =: {{ '  Order@.1 (', (":y), ')' }}each test_order
  
  assertions  =: {{ 
    call  =. callfrom&y
    expec =. ": call 'expected'
    prop  =. ' ', ~ call 'property'
    x_val =. ' ' ,~  ": call 'x_in'
    y_val =. ": ' ',~ call 'y_in'
    '  assert ', expec , ' -: ' , x_val , prop, y_val
  }}each all_tests__suite
)

destroy=: 3 : 0
  codestroy''
)
