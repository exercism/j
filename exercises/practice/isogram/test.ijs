load 'isogram.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


isogram_test_01_ignore=: 0
test_isogram_test_01  =: monad define
  Description@.1 ('empty string')
  Order@.1 (1)

  NB. phrase=. ''
  NB. expected=. 1
  assert 1 -: is_isogram ''
)

isogram_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_02  =: monad define
  Description@.1 ('isogram with only lower case characters')
  Order@.1 (2)

  NB. phrase=. 'isogram'
  NB. expected=. 1
  assert 1 -: is_isogram 'isogram'
)

isogram_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_03  =: monad define
  Description@.1 ('word with one duplicated character')
  Order@.1 (3)

  NB. phrase=. 'eleven'
  NB. expected=. 0
  assert 0 -: is_isogram 'eleven'
)

isogram_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_04  =: monad define
  Description@.1 ('word with one duplicated character from the end of the alphabet')
  Order@.1 (4)

  NB. phrase=. 'zzyzx'
  NB. expected=. 0
  assert 0 -: is_isogram 'zzyzx'
)

isogram_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_05  =: monad define
  Description@.1 ('longest reported english isogram')
  Order@.1 (5)

  NB. phrase=. 'subdermatoglyphic'
  NB. expected=. 1
  assert 1 -: is_isogram 'subdermatoglyphic'
)

isogram_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_06  =: monad define
  Description@.1 ('word with duplicated character in mixed case')
  Order@.1 (6)

  NB. phrase=. 'Alphabet'
  NB. expected=. 0
  assert 0 -: is_isogram 'Alphabet'
)

isogram_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_07  =: monad define
  Description@.1 ('word with duplicated character in mixed case, lowercase first')
  Order@.1 (7)

  NB. phrase=. 'alphAbet'
  NB. expected=. 0
  assert 0 -: is_isogram 'alphAbet'
)

isogram_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_08  =: monad define
  Description@.1 ('hypothetical isogrammic word with hyphen')
  Order@.1 (8)

  NB. phrase=. 'thumbscrew-japingly'
  NB. expected=. 1
  assert 1 -: is_isogram 'thumbscrew-japingly'
)

isogram_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_09  =: monad define
  Description@.1 ('hypothetical word with duplicated character following hyphen')
  Order@.1 (9)

  NB. phrase=. 'thumbscrew-jappingly'
  NB. expected=. 0
  assert 0 -: is_isogram 'thumbscrew-jappingly'
)

isogram_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_10  =: monad define
  Description@.1 ('isogram with duplicated hyphen')
  Order@.1 (10)

  NB. phrase=. 'six-year-old'
  NB. expected=. 1
  assert 1 -: is_isogram 'six-year-old'
)

isogram_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_11  =: monad define
  Description@.1 ('made-up name that is an isogram')
  Order@.1 (11)

  NB. phrase=. 'Emily Jung Schwartzkopf'
  NB. expected=. 1
  assert 1 -: is_isogram 'Emily Jung Schwartzkopf'
)

isogram_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_12  =: monad define
  Description@.1 ('duplicated character in the middle')
  Order@.1 (12)

  NB. phrase=. 'accentor'
  NB. expected=. 0
  assert 0 -: is_isogram 'accentor'
)

isogram_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_13  =: monad define
  Description@.1 ('same first and last characters')
  Order@.1 (13)

  NB. phrase=. 'angola'
  NB. expected=. 0
  assert 0 -: is_isogram 'angola'
)

isogram_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_isogram_test_14  =: monad define
  Description@.1 ('word with duplicated character and with two hyphens')
  Order@.1 (14)

  NB. phrase=. 'up-to-date'
  NB. expected=. 0
  assert 0 -: is_isogram 'up-to-date'
)

