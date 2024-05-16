load 'luhn.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


luhn_test_01_ignore=: 0
test_luhn_test_01  =: monad define
  Description@.1 ('single digit strings can not be valid')
  Order@.1 (1)

  NB. value    =. '1'
  NB. expected =. 0
  assert 0 -: valid '1'
)

luhn_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_02  =: monad define
  Description@.1 ('a single zero is invalid')
  Order@.1 (2)

  NB. value    =. '0'
  NB. expected =. 0
  assert 0 -: valid '0'
)

luhn_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_03  =: monad define
  Description@.1 ('a simple valid SIN that remains valid if reversed')
  Order@.1 (3)

  NB. value    =. '059'
  NB. expected =. 1
  assert 1 -: valid '059'
)

luhn_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_04  =: monad define
  Description@.1 ('a simple valid SIN that becomes invalid if reversed')
  Order@.1 (4)

  NB. value    =. '59'
  NB. expected =. 1
  assert 1 -: valid '59'
)

luhn_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_05  =: monad define
  Description@.1 ('a valid Canadian SIN')
  Order@.1 (5)

  NB. value    =. '055 444 285'
  NB. expected =. 1
  assert 1 -: valid '055 444 285'
)

luhn_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_06  =: monad define
  Description@.1 ('invalid Canadian SIN')
  Order@.1 (6)

  NB. value    =. '055 444 286'
  NB. expected =. 0
  assert 0 -: valid '055 444 286'
)

luhn_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_07  =: monad define
  Description@.1 ('invalid credit card')
  Order@.1 (7)

  NB. value    =. '8273 1232 7352 0569'
  NB. expected =. 0
  assert 0 -: valid '8273 1232 7352 0569'
)

luhn_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_08  =: monad define
  Description@.1 ('invalid long number with an even remainder')
  Order@.1 (8)

  NB. value    =. '1 2345 6789 1234 5678 9012'
  NB. expected =. 0
  assert 0 -: valid '1 2345 6789 1234 5678 9012'
)

luhn_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_09  =: monad define
  Description@.1 ('invalid long number with a remainder divisible by 5')
  Order@.1 (9)

  NB. value    =. '1 2345 6789 1234 5678 9013'
  NB. expected =. 0
  assert 0 -: valid '1 2345 6789 1234 5678 9013'
)

luhn_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_10  =: monad define
  Description@.1 ('valid number with an even number of digits')
  Order@.1 (10)

  NB. value    =. '095 245 88'
  NB. expected =. 1
  assert 1 -: valid '095 245 88'
)

luhn_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_11  =: monad define
  Description@.1 ('valid number with an odd number of spaces')
  Order@.1 (11)

  NB. value    =. '234 567 891 234'
  NB. expected =. 1
  assert 1 -: valid '234 567 891 234'
)

luhn_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_12  =: monad define
  Description@.1 ('valid strings with a non-digit added at the end become invalid')
  Order@.1 (12)

  NB. value    =. '059a'
  NB. expected =. 0
  assert 0 -: valid '059a'
)

luhn_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_13  =: monad define
  Description@.1 ('valid strings with punctuation included become invalid')
  Order@.1 (13)

  NB. value    =. '055-444-285'
  NB. expected =. 0
  assert 0 -: valid '055-444-285'
)

luhn_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_14  =: monad define
  Description@.1 ('valid strings with symbols included become invalid')
  Order@.1 (14)

  NB. value    =. '055# 444$ 285'
  NB. expected =. 0
  assert 0 -: valid '055# 444$ 285'
)

luhn_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_15  =: monad define
  Description@.1 ('single zero with space is invalid')
  Order@.1 (15)

  NB. value    =. ' 0'
  NB. expected =. 0
  assert 0 -: valid ' 0'
)

luhn_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_16  =: monad define
  Description@.1 ('more than a single zero is valid')
  Order@.1 (16)

  NB. value    =. '0000 0'
  NB. expected =. 1
  assert 1 -: valid '0000 0'
)

luhn_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_17  =: monad define
  Description@.1 ('input digit 9 is correctly converted to output digit 9')
  Order@.1 (17)

  NB. value    =. '091'
  NB. expected =. 1
  assert 1 -: valid '091'
)

luhn_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_18  =: monad define
  Description@.1 ('very long input is valid')
  Order@.1 (18)

  NB. value    =. '9999999999 9999999999 9999999999 9999999999'
  NB. expected =. 1
  assert 1 -: valid '9999999999 9999999999 9999999999 9999999999'
)

luhn_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_19  =: monad define
  Description@.1 ('valid luhn with an odd number of digits and non zero first digit')
  Order@.1 (19)

  NB. value    =. '109'
  NB. expected =. 1
  assert 1 -: valid '109'
)

luhn_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_20  =: monad define
  Description@.1 ('using ascii value for non-doubled non-digit isn''t allowed')
  Order@.1 (20)

  NB. value    =. '055b 444 285'
  NB. expected =. 0
  assert 0 -: valid '055b 444 285'
)

luhn_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_21  =: monad define
  Description@.1 ('using ascii value for doubled non-digit isn''t allowed')
  Order@.1 (21)

  NB. value    =. ':9'
  NB. expected =. 0
  assert 0 -: valid ':9'
)

luhn_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_22  =: monad define
  Description@.1 ('non-numeric, non-space char in the middle with a sum that''s divisible by 10 isn''t allowed')
  Order@.1 (22)

  NB. value    =. '59%59'
  NB. expected =. 0
  assert 0 -: valid '59%59'
)

