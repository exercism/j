load 'resistor-color-duo.ijs'


resistor_color_duo_test_01_ignore=: 0
test_resistor_color_duo_test_01  =: monad define
  Description=: 'Brown and black'


  NB. colors=. <;._1 ' brown black'
  NB. expected=. 10
  assert 10 -: value <;._1 ' brown black'
)

resistor_color_duo_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_02  =: monad define
  Description=: 'Blue and grey'


  NB. colors=. <;._1 ' blue grey'
  NB. expected=. 68
  assert 68 -: value <;._1 ' blue grey'
)

resistor_color_duo_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_03  =: monad define
  Description=: 'Yellow and violet'


  NB. colors=. <;._1 ' yellow violet'
  NB. expected=. 47
  assert 47 -: value <;._1 ' yellow violet'
)

resistor_color_duo_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_04  =: monad define
  Description=: 'White and red'


  NB. colors=. <;._1 ' white red'
  NB. expected=. 92
  assert 92 -: value <;._1 ' white red'
)

resistor_color_duo_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_05  =: monad define
  Description=: 'Orange and orange'


  NB. colors=. <;._1 ' orange orange'
  NB. expected=. 33
  assert 33 -: value <;._1 ' orange orange'
)

resistor_color_duo_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_06  =: monad define
  Description=: 'Ignore additional colors'


  NB. colors=. <;._1 ' green brown orange'
  NB. expected=. 51
  assert 51 -: value <;._1 ' green brown orange'
)

resistor_color_duo_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_duo_test_07  =: monad define
  Description=: 'Black and brown, one-digit'


  NB. colors=. <;._1 ' black brown'
  NB. expected=. 1
  assert 1 -: value <;._1 ' black brown'
)
