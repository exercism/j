load 'resistor-color.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


resistor_color_test_01_ignore=: 0
test_resistor_color_test_01  =: monad define
  Description@.1 ('Black')
  Order@.1 (1)

  NB. color=. 'black'
  NB. expected=. 0
  assert 0 -: colorcode 'black'
)

resistor_color_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_test_02  =: monad define
  Description@.1 ('White')
  Order@.1 (2)

  NB. color=. 'white'
  NB. expected=. 9
  assert 9 -: colorcode 'white'
)

resistor_color_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_test_03  =: monad define
  Description@.1 ('Orange')
  Order@.1 (3)

  NB. color=. 'orange'
  NB. expected=. 3
  assert 3 -: colorcode 'orange'
)

resistor_color_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_test_04  =: monad define
  Description@.1 ('Colors')
  Order@.1 (4)


  NB. expected=. <;._1 ' black brown red orange yellow green blue violet grey white'
  assert (<;._1 ' black brown red orange yellow green blue violet grey white') -: colors ''
)
