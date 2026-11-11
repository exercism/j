load 'luhn.ijs'


luhn_test_01_ignore=: 0
test_luhn_test_01  =: monad define
  Description=: 'single digit strings can not be valid'


  NB. value    =. '1'
  NB. expected =. 0
  assert 0 -: valid '1'
)

luhn_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_02  =: monad define
  Description=: 'a single zero is invalid'


  NB. value    =. '0'
  NB. expected =. 0
  assert 0 -: valid '0'
)

luhn_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_03  =: monad define
  Description=: 'a simple valid SIN that remains valid if reversed'


  NB. value    =. '059'
  NB. expected =. 1
  assert 1 -: valid '059'
)

luhn_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_04  =: monad define
  Description=: 'a simple valid SIN that becomes invalid if reversed'


  NB. value    =. '59'
  NB. expected =. 1
  assert 1 -: valid '59'
)

luhn_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_05  =: monad define
  Description=: 'a valid Canadian SIN'


  NB. value    =. '055 444 285'
  NB. expected =. 1
  assert 1 -: valid '055 444 285'
)

luhn_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_06  =: monad define
  Description=: 'invalid Canadian SIN'


  NB. value    =. '055 444 286'
  NB. expected =. 0
  assert 0 -: valid '055 444 286'
)

luhn_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_07  =: monad define
  Description=: 'invalid credit card'


  NB. value    =. '8273 1232 7352 0569'
  NB. expected =. 0
  assert 0 -: valid '8273 1232 7352 0569'
)

luhn_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_08  =: monad define
  Description=: 'invalid long number with an even remainder'


  NB. value    =. '1 2345 6789 1234 5678 9012'
  NB. expected =. 0
  assert 0 -: valid '1 2345 6789 1234 5678 9012'
)

luhn_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_09  =: monad define
  Description=: 'invalid long number with a remainder divisible by 5'


  NB. value    =. '1 2345 6789 1234 5678 9013'
  NB. expected =. 0
  assert 0 -: valid '1 2345 6789 1234 5678 9013'
)

luhn_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_10  =: monad define
  Description=: 'valid number with an even number of digits'


  NB. value    =. '095 245 88'
  NB. expected =. 1
  assert 1 -: valid '095 245 88'
)

luhn_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_11  =: monad define
  Description=: 'valid number with an odd number of spaces'


  NB. value    =. '234 567 891 234'
  NB. expected =. 1
  assert 1 -: valid '234 567 891 234'
)

luhn_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_12  =: monad define
  Description=: 'valid strings with a non-digit added at the end become invalid'


  NB. value    =. '059a'
  NB. expected =. 0
  assert 0 -: valid '059a'
)

luhn_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_13  =: monad define
  Description=: 'valid strings with punctuation included become invalid'


  NB. value    =. '055-444-285'
  NB. expected =. 0
  assert 0 -: valid '055-444-285'
)

luhn_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_14  =: monad define
  Description=: 'valid strings with symbols included become invalid'


  NB. value    =. '055# 444$ 285'
  NB. expected =. 0
  assert 0 -: valid '055# 444$ 285'
)

luhn_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_15  =: monad define
  Description=: 'single zero with space is invalid'


  NB. value    =. ' 0'
  NB. expected =. 0
  assert 0 -: valid ' 0'
)

luhn_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_16  =: monad define
  Description=: 'more than a single zero is valid'


  NB. value    =. '0000 0'
  NB. expected =. 1
  assert 1 -: valid '0000 0'
)

luhn_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_17  =: monad define
  Description=: 'input digit 9 is correctly converted to output digit 9'


  NB. value    =. '091'
  NB. expected =. 1
  assert 1 -: valid '091'
)

luhn_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_18  =: monad define
  Description=: 'very long input is valid'


  NB. value    =. '9999999999 9999999999 9999999999 9999999999'
  NB. expected =. 1
  assert 1 -: valid '9999999999 9999999999 9999999999 9999999999'
)

luhn_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_19  =: monad define
  Description=: 'valid luhn with an odd number of digits and non zero first digit'


  NB. value    =. '109'
  NB. expected =. 1
  assert 1 -: valid '109'
)

luhn_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_20  =: monad define
  Description=: 'using ascii value for non-doubled non-digit isn''t allowed'


  NB. value    =. '055b 444 285'
  NB. expected =. 0
  assert 0 -: valid '055b 444 285'
)

luhn_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_21  =: monad define
  Description=: 'using ascii value for doubled non-digit isn''t allowed'


  NB. value    =. ':9'
  NB. expected =. 0
  assert 0 -: valid ':9'
)

luhn_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_luhn_test_22  =: monad define
  Description=: 'non-numeric, non-space char in the middle with a sum that''s divisible by 10 isn''t allowed'


  NB. value    =. '59%59'
  NB. expected =. 0
  assert 0 -: valid '59%59'
)

