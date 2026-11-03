load 'isbn-verifier.ijs'


isbn_verifier_test_01_ignore=: 0
test_isbn_verifier_test_01  =: monad define
  Description=: 'valid isbn'


  NB. isbn=. '3-598-21508-8'
  NB. expected=. 1
  assert 1 -: isvalid '3-598-21508-8'
)

isbn_verifier_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_02  =: monad define
  Description=: 'invalid isbn check digit'


  NB. isbn=. '3-598-21508-9'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-21508-9'
)

isbn_verifier_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_03  =: monad define
  Description=: 'valid isbn with a check digit of 10'


  NB. isbn=. '3-598-21507-X'
  NB. expected=. 1
  assert 1 -: isvalid '3-598-21507-X'
)

isbn_verifier_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_04  =: monad define
  Description=: 'check digit is a character other than X'


  NB. isbn=. '3-598-21507-A'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-21507-A'
)

isbn_verifier_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_05  =: monad define
  Description=: 'invalid check digit in isbn is not treated as zero'


  NB. isbn=. '4-598-21507-B'
  NB. expected=. 0
  assert 0 -: isvalid '4-598-21507-B'
)

isbn_verifier_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_06  =: monad define
  Description=: 'invalid character in isbn is not treated as zero'


  NB. isbn=. '3-598-P1581-X'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-P1581-X'
)

isbn_verifier_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_07  =: monad define
  Description=: 'X is only valid as a check digit'


  NB. isbn=. '3-598-2X507-9'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-2X507-9'
)

isbn_verifier_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_08  =: monad define
  Description=: 'valid isbn without separating dashes'


  NB. isbn=. '3598215088'
  NB. expected=. 1
  assert 1 -: isvalid '3598215088'
)

isbn_verifier_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_09  =: monad define
  Description=: 'isbn without separating dashes and X as check digit'


  NB. isbn=. '359821507X'
  NB. expected=. 1
  assert 1 -: isvalid '359821507X'
)

isbn_verifier_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_10  =: monad define
  Description=: 'isbn without check digit and dashes'


  NB. isbn=. '359821507'
  NB. expected=. 0
  assert 0 -: isvalid '359821507'
)

isbn_verifier_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_11  =: monad define
  Description=: 'too long isbn and no dashes'


  NB. isbn=. '3598215078X'
  NB. expected=. 0
  assert 0 -: isvalid '3598215078X'
)

isbn_verifier_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_12  =: monad define
  Description=: 'too short isbn'


  NB. isbn=. '00'
  NB. expected=. 0
  assert 0 -: isvalid '00'
)

isbn_verifier_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_13  =: monad define
  Description=: 'isbn without check digit'


  NB. isbn=. '3-598-21507'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-21507'
)

isbn_verifier_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_14  =: monad define
  Description=: 'check digit of X should not be used for 0'


  NB. isbn=. '3-598-21515-X'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-21515-X'
)

isbn_verifier_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_15  =: monad define
  Description=: 'empty isbn'


  NB. isbn=. 0$0
  NB. expected=. 0
  assert 0 -: isvalid ''
)

isbn_verifier_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_16  =: monad define
  Description=: 'input is 9 characters'


  NB. isbn=. '134456729'
  NB. expected=. 0
  assert 0 -: isvalid '134456729'
)

isbn_verifier_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_17  =: monad define
  Description=: 'invalid characters are not ignored after checking length'


  NB. isbn=. '3132P34035'
  NB. expected=. 0
  assert 0 -: isvalid '3132P34035'
)

isbn_verifier_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_18  =: monad define
  Description=: 'invalid characters are not ignored before checking length'


  NB. isbn=. '3598P215088'
  NB. expected=. 0
  assert 0 -: isvalid '3598P215088'
)

isbn_verifier_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_19  =: monad define
  Description=: 'input is too long but contains a valid isbn'


  NB. isbn=. '98245726788'
  NB. expected=. 0
  assert 0 -: isvalid '98245726788'
)
