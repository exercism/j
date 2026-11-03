load 'isogram.ijs'


isogram_test_01_ignore=: 0
test_isogram_test_01  =: monad define
  Description=: 'empty string'


  NB. phrase=. ''
  NB. expected=. 1
  assert 1 -: is_isogram ''
)

isogram_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_02  =: monad define
  Description=: 'isogram with only lower case characters'


  NB. phrase=. 'isogram'
  NB. expected=. 1
  assert 1 -: is_isogram 'isogram'
)

isogram_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_03  =: monad define
  Description=: 'word with one duplicated character'


  NB. phrase=. 'eleven'
  NB. expected=. 0
  assert 0 -: is_isogram 'eleven'
)

isogram_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_04  =: monad define
  Description=: 'word with one duplicated character from the end of the alphabet'


  NB. phrase=. 'zzyzx'
  NB. expected=. 0
  assert 0 -: is_isogram 'zzyzx'
)

isogram_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_05  =: monad define
  Description=: 'longest reported english isogram'


  NB. phrase=. 'subdermatoglyphic'
  NB. expected=. 1
  assert 1 -: is_isogram 'subdermatoglyphic'
)

isogram_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_06  =: monad define
  Description=: 'word with duplicated character in mixed case'


  NB. phrase=. 'Alphabet'
  NB. expected=. 0
  assert 0 -: is_isogram 'Alphabet'
)

isogram_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_07  =: monad define
  Description=: 'word with duplicated character in mixed case, lowercase first'


  NB. phrase=. 'alphAbet'
  NB. expected=. 0
  assert 0 -: is_isogram 'alphAbet'
)

isogram_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_08  =: monad define
  Description=: 'hypothetical isogrammic word with hyphen'


  NB. phrase=. 'thumbscrew-japingly'
  NB. expected=. 1
  assert 1 -: is_isogram 'thumbscrew-japingly'
)

isogram_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_09  =: monad define
  Description=: 'hypothetical word with duplicated character following hyphen'


  NB. phrase=. 'thumbscrew-jappingly'
  NB. expected=. 0
  assert 0 -: is_isogram 'thumbscrew-jappingly'
)

isogram_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_10  =: monad define
  Description=: 'isogram with duplicated hyphen'


  NB. phrase=. 'six-year-old'
  NB. expected=. 1
  assert 1 -: is_isogram 'six-year-old'
)

isogram_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_11  =: monad define
  Description=: 'made-up name that is an isogram'


  NB. phrase=. 'Emily Jung Schwartzkopf'
  NB. expected=. 1
  assert 1 -: is_isogram 'Emily Jung Schwartzkopf'
)

isogram_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_12  =: monad define
  Description=: 'duplicated character in the middle'


  NB. phrase=. 'accentor'
  NB. expected=. 0
  assert 0 -: is_isogram 'accentor'
)

isogram_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_13  =: monad define
  Description=: 'same first and last characters'


  NB. phrase=. 'angola'
  NB. expected=. 0
  assert 0 -: is_isogram 'angola'
)

isogram_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_14  =: monad define
  Description=: 'word with duplicated character and with two hyphens'


  NB. phrase=. 'up-to-date'
  NB. expected=. 0
  assert 0 -: is_isogram 'up-to-date'
)

