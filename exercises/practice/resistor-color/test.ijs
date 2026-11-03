load 'resistor-color.ijs'


resistor_color_test_01_ignore=: 0
test_resistor_color_test_01  =: monad define
  Description=: 'Black'


  NB. color=. 'black'
  NB. expected=. 0
  assert 0 -: colorcode 'black'
)

resistor_color_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_test_02  =: monad define
  Description=: 'White'


  NB. color=. 'white'
  NB. expected=. 9
  assert 9 -: colorcode 'white'
)

resistor_color_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_test_03  =: monad define
  Description=: 'Orange'


  NB. color=. 'orange'
  NB. expected=. 3
  assert 3 -: colorcode 'orange'
)

resistor_color_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_test_04  =: monad define
  Description=: 'Colors'



  NB. expected=. <;._1 ' black brown red orange yellow green blue violet grey white'
  assert (<;._1 ' black brown red orange yellow green blue violet grey white') -: colors ''
)
