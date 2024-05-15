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
  input=: input conew 'input'
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'singleinputtest'

create=: 3 : 0
  (' ' joinstring {. y) =: {: y
  'input_name input_value'=: ((": @ ; @ {. ) ; (''"_)`(": @ ; @ {:) @. (0 -.@-: #)) input
  format_input=: '  NB. ', input_name, '=. ', input_value
  expected=: 0:`1:`] @. (('json_false';'json_true')&i.@<) expected
  format_expected=: '  NB. expected=. ', ":expected
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'testsuite'

create=: 3 : 0
  'name tests'=: (>@{. ; <@}.) y
  (('test_',":)each #\ tests)=: (conew&'singleinputtest') every tests
  smoutput conames''
  0
)

destroy=: 3 : 0
  codestroy''
)

cocurrent 'base'
a=:(format_tests 'leap') conew 'testsuite'
