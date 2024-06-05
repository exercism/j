load 'Generator/test_data.ijs'

cocurrent 'test'

create=: 3 : 0
  (' ' joinstring {. y) =: {: y
  xin=: ''
  yin=: {: input
  if. 1 -: # yin do.
    yin=: > yin
  elseif. 2 -: # yin do.
    'yin xin'=: yin
    xin      =: 5!:6 < 'xin'
  end.
  NB. correct case where numeric array is convertd into  an array of boxed numbers
  select. expected
  case. 'json_false' do. expected=: 0
  case. 'json_true'  do. expected=: 1
  end.

  yin      =: 5!:6 < 'yin'  
  expected =: 5!:6 < 'expected'
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'testsuite'

create=: 3 : 0
  load 'Generator/test_data.ijs'
  'name tests'=: (>@{. ; <@}.) format_tests y
  filename    =: name , '.ijs'
  name        =: name rplc '-';'_'
  (('test_',":)each #\ tests)=: all_tests=: (conew&'test')every tests
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'testwriter'

create=: 3 : 0
  callfrom    =: {{ (x , '_' , y , '_')~ }}
  suite       =: y conew 'testsuite'
  test_numbers=: (_2 {.!.'0' ":)each #\ tests__suite

  load_directive=: 'load ', (quote filename__suite)
  helpers       =: {{)n


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)

}}

  ignore_flags=: ((<'0') 0} (<'1 NB. Change this value to 0 to run this test') #~ #) test_numbers                     
  ignore_flags=: ((name__suite, '_test_', [ , '_ignore=: ' , ])each/"1) test_numbers ,. ignore_flags
  tests =: ignore_flags {{ x , LF ,  'test_', name__suite, '_test_', y, '  =: monad define'}}each test_numbers         NB. append tests names
  tests =: tests {{ x , LF , '  Description@.1 (''' , ('description' callfrom y) , ''')' }}each all_tests__suite       NB. append descriptions
  tests =: tests {{ x , LF , '  Order@.1 (', (":y), ')', LF }}each #\ tests__suite                                     NB. append ordering

  NB. Correct extra blank line for single input cases
  tests =: tests {{                                                                                                    NB. append inputs
    x , LF , LF joinstring {{ '  NB. ', x  , ' =. ' , 5!:6 <'y' }}each/"1 :: (,:'  NB. input=. ''''') |: 'input' callfrom y 
  }}each all_tests__suite

  tests =: tests {{ x , LF , '  NB. expected =. ' , ": 'expected' callfrom y }}each all_tests__suite                   NB. append expeted result as comment
  
  tests =: tests {{                                                                                                    NB. append assertion
    pat=. Jchar_jregex_ , '|' , '*' <:@#@]} Jnum_jregex_
    parens=. ('(' , ')' ,~ ])^:([: -. pat&rxeq)

    expe =. parens 'expected' callfrom y
    prop =. 'property' callfrom y
    xval =. parens 'xin' callfrom y
    yval =. ' ', 'yin' callfrom y
    x , LF , '  assert ', expe , ' -: ' , xval , prop , yval , LF , ')' , LF
  }}each all_tests__suite

  tests =: load_directive ; helpers ; tests
  text  =: fputs LF joinstring tests
)

destroy=: 3 : 0
  codestroy''
)


cocurrent 'base'
a =: 'all-your-base' conew 'testwriter'
b =: 'leap' conew 'testwriter'
c =: 'dnd-character' conew 'testwriter'

(fputs LF joinstring tests__a) 1!:2 < 'Generator/test.ijs'
(fputs joinstring tests__b) 1!:2 < 'Generator/test.ijs'
(fputs joinstring tests__c) 1!:2 < 'Generator/test.ijs'  NB. last cases not printing the ignore flags, name and helpers
