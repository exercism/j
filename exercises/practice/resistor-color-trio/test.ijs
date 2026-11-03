load 'resistor-color-trio.ijs'


resistor_color_trio_test_01_ignore=: 0
test_resistor_color_trio_test_01  =: monad define
  Description=: 'Orange and orange and black'

  NB. colors=. <;._1 ' orange orange black'
  NB. expected=. 33;'ohms'
  assert (33;'ohms') -: label <;._1 ' orange orange black'
)

resistor_color_trio_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_02  =: monad define
  Description=: 'Blue and grey and brown'

  NB. colors=. <;._1 ' blue grey brown'
  NB. expected=. 680;'ohms'
  assert (680;'ohms') -: label <;._1 ' blue grey brown'
)

resistor_color_trio_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_03  =: monad define
  Description=: 'Red and black and red'

  NB. colors=. <;._1 ' red black red'
  NB. expected=. 2;'kiloohms'
  assert (2;'kiloohms') -: label <;._1 ' red black red'
)

resistor_color_trio_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_04  =: monad define
  Description=: 'Green and brown and orange'

  NB. colors=. <;._1 ' green brown orange'
  NB. expected=. 51;'kiloohms'
  assert (51;'kiloohms') -: label <;._1 ' green brown orange'
)

resistor_color_trio_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_05  =: monad define
  Description=: 'Yellow and violet and yellow'

  NB. colors=. <;._1 ' yellow violet yellow'
  NB. expected=. 470;'kiloohms'
  assert (470;'kiloohms') -: label <;._1 ' yellow violet yellow'
)

resistor_color_trio_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_06  =: monad define
  Description=: 'Blue and violet and blue'

  NB. colors=. <;._1 ' blue violet blue'
  NB. expected=. 67;'megaohms'
  assert (67;'megaohms') -: label <;._1 ' blue violet blue'
)

resistor_color_trio_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_07  =: monad define
  Description=: 'Minimum possible value'

  NB. colors=. <;._1 ' black black black'
  NB. expected=. 0;'ohms'
  assert (0;'ohms') -: label <;._1 ' black black black'
)

resistor_color_trio_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_08  =: monad define
  Description=: 'Maximum possible value'

  NB. colors=. <;._1 ' white white white'
  NB. expected=. 99;'gigaohms'
  assert (99;'gigaohms') -: label <;._1 ' white white white'
)

resistor_color_trio_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_09  =: monad define
  Description=: 'First two colors make an invalid octal number'

  NB. colors=. <;._1 ' black grey black'
  NB. expected=. 8;'ohms'
  assert (8;'ohms') -: label <;._1 ' black grey black'
)

resistor_color_trio_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_resistor_color_trio_test_10  =: monad define
  Description=: 'Ignore extra colors'

  NB. colors=. <;._1 ' blue green yellow orange'
  NB. expected=. 650;'kiloohms'
  assert (650;'kiloohms') -: label <;._1 ' blue green yellow orange'
)
