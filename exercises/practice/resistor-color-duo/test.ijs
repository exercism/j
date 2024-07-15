load 'resistor-color-duo.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


resistor_color_duo_test_01_ignore=: 0
test_resistor_color_duo_test_01  =: monad define
  Description@.1 ('Brown and black')
  Order@.1 (1)

  NB. colors=. <;._1 ' brown black'
  NB. expected=. 10
  assert 10 -: value <;._1 ' brown black'
)

resistor_color_duo_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_02  =: monad define
  Description@.1 ('Blue and grey')
  Order@.1 (2)

  NB. colors=. <;._1 ' blue grey'
  NB. expected=. 68
  assert 68 -: value <;._1 ' blue grey'
)

resistor_color_duo_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_03  =: monad define
  Description@.1 ('Yellow and violet')
  Order@.1 (3)

  NB. colors=. <;._1 ' yellow violet'
  NB. expected=. 47
  assert 47 -: value <;._1 ' yellow violet'
)

resistor_color_duo_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_04  =: monad define
  Description@.1 ('White and red')
  Order@.1 (4)

  NB. colors=. <;._1 ' white red'
  NB. expected=. 92
  assert 92 -: value <;._1 ' white red'
)

resistor_color_duo_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_05  =: monad define
  Description@.1 ('Orange and orange')
  Order@.1 (5)

  NB. colors=. <;._1 ' orange orange'
  NB. expected=. 33
  assert 33 -: value <;._1 ' orange orange'
)

resistor_color_duo_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_06  =: monad define
  Description@.1 ('Ignore additional colors')
  Order@.1 (6)

  NB. colors=. <;._1 ' green brown orange'
  NB. expected=. 51
  assert 51 -: value <;._1 ' green brown orange'
)

resistor_color_duo_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_07  =: monad define
  Description@.1 ('Black and brown, one-digit')
  Order@.1 (7)

  NB. colors=. <;._1 ' black brown'
  NB. expected=. 1
  assert 1 -: value <;._1 ' black brown'
)
