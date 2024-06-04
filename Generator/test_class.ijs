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
  expected=: 1:^:(-:&'json_true') @: (0:^:(-:&'json_false')) expected

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
  name        =: name rplc ' ';'_'
  filename    =: '.ijs' ,~ name rplc '_';'-'
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

  load_directive=: 'load ', quote filename__suite
  helpers       =: {{)n


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)

}}

  ignore_flags=: (,&' NB. Change this value to 0 to run this test')^:(-:&'1')each ('0' , '1' #~ <:@#) test_numbers
  ignore_flags=: ((name__suite, '_test_', [ , '_ignore=: ' , ])&": each/"1) test_numbers ,. ignore_flags
  test_names  =: {{'test_', name__suite, '_test_', y, '  =: monad define'}}each test_numbers
  
  descriptions=: {{ 
    desc=. 'description' callfrom y
    '  Description@.1 (''' , desc , ''')'
  }}each all_tests__suite
  
  order =: {{ '  Order@.1 (', (":y), ')', LF }}each #\ tests__suite

  inputs =: {{
    ((({{('  NB. ', x  , ' =. ' , (5!:6) (<'val') [ val=.>y)}})every/"1)@:|:)^:(-.@-:&'') 'input' callfrom y 
  }}each :: '' all_tests__suite

  expecteds =: {{
    '  NB. expected =. ' , ": 'expected' callfrom y
  }}each all_tests__suite 
  
  assertions  =: {{ 
    e =. '(', ')',~ 'expected' callfrom y
    p =. 'property' callfrom y
    xval=. ('(' , ] , ') '"_)^:(-.@-:&'') ('xin' callfrom y)
    yval=. ' ', 'yin' callfrom y
    '  assert ', e , ' -: ' , xval , p, yval
  }}each all_tests__suite

  end_def =: ,&(')',LF)

  vals=: <"1 ignore_flags ,. test_names ,. descriptions ,. order ,. inputs ,. expecteds ,. assertions
  vals=: load_directive ; helpers ; (end_def@:(fputs@:;))each vals
)

destroy=: 3 : 0
  codestroy''
)


cocurrent 'base'
a =: 'all-your-base' conew 'testwriter'
b =: 'leap' conew 'testwriter'
s =: ('all-your-base') conew 'testsuite'


all_tests__s
,.ignore_flags__a
,.test_names__a
,.descriptions__a
,.order__a
,.inputs__a
,.expecteds__a
,.assertions__a
end_defs__a

;expected_924_

;{:vals__a

(fputs joinstring vals__a) 1!:2 < 'Generator/test.ijs'
(fputs joinstring vals__b) 1!:2 < 'Generator/test.ijs'
5!:6 <'yin_390_'
