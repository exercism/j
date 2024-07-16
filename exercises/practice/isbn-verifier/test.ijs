load 'isbn-verifier.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


isbn_verifier_test_01_ignore=: 0
test_isbn_verifier_test_01  =: monad define
  Description@.1 ('valid isbn')
  Order@.1 (1)

  NB. isbn=. '3-598-21508-8'
  NB. expected=. 1
  assert 1 -: isvalid '3-598-21508-8'
)

isbn_verifier_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_02  =: monad define
  Description@.1 ('invalid isbn check digit')
  Order@.1 (2)

  NB. isbn=. '3-598-21508-9'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-21508-9'
)

isbn_verifier_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_03  =: monad define
  Description@.1 ('valid isbn with a check digit of 10')
  Order@.1 (3)

  NB. isbn=. '3-598-21507-X'
  NB. expected=. 1
  assert 1 -: isvalid '3-598-21507-X'
)

isbn_verifier_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_04  =: monad define
  Description@.1 ('check digit is a character other than X')
  Order@.1 (4)

  NB. isbn=. '3-598-21507-A'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-21507-A'
)

isbn_verifier_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_05  =: monad define
  Description@.1 ('invalid check digit in isbn is not treated as zero')
  Order@.1 (5)

  NB. isbn=. '4-598-21507-B'
  NB. expected=. 0
  assert 0 -: isvalid '4-598-21507-B'
)

isbn_verifier_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_06  =: monad define
  Description@.1 ('invalid character in isbn is not treated as zero')
  Order@.1 (6)

  NB. isbn=. '3-598-P1581-X'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-P1581-X'
)

isbn_verifier_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_07  =: monad define
  Description@.1 ('X is only valid as a check digit')
  Order@.1 (7)

  NB. isbn=. '3-598-2X507-9'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-2X507-9'
)

isbn_verifier_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_08  =: monad define
  Description@.1 ('valid isbn without separating dashes')
  Order@.1 (8)

  NB. isbn=. '3598215088'
  NB. expected=. 1
  assert 1 -: isvalid '3598215088'
)

isbn_verifier_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_09  =: monad define
  Description@.1 ('isbn without separating dashes and X as check digit')
  Order@.1 (9)

  NB. isbn=. '359821507X'
  NB. expected=. 1
  assert 1 -: isvalid '359821507X'
)

isbn_verifier_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_10  =: monad define
  Description@.1 ('isbn without check digit and dashes')
  Order@.1 (10)

  NB. isbn=. '359821507'
  NB. expected=. 0
  assert 0 -: isvalid '359821507'
)

isbn_verifier_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_11  =: monad define
  Description@.1 ('too long isbn and no dashes')
  Order@.1 (11)

  NB. isbn=. '3598215078X'
  NB. expected=. 0
  assert 0 -: isvalid '3598215078X'
)

isbn_verifier_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_12  =: monad define
  Description@.1 ('too short isbn')
  Order@.1 (12)

  NB. isbn=. '00'
  NB. expected=. 0
  assert 0 -: isvalid '00'
)

isbn_verifier_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_13  =: monad define
  Description@.1 ('isbn without check digit')
  Order@.1 (13)

  NB. isbn=. '3-598-21507'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-21507'
)

isbn_verifier_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_14  =: monad define
  Description@.1 ('check digit of X should not be used for 0')
  Order@.1 (14)

  NB. isbn=. '3-598-21515-X'
  NB. expected=. 0
  assert 0 -: isvalid '3-598-21515-X'
)

isbn_verifier_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_15  =: monad define
  Description@.1 ('empty isbn')
  Order@.1 (15)

  NB. isbn=. 0$0
  NB. expected=. 0
  assert 0 -: isvalid ''
)

isbn_verifier_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_16  =: monad define
  Description@.1 ('input is 9 characters')
  Order@.1 (16)

  NB. isbn=. '134456729'
  NB. expected=. 0
  assert 0 -: isvalid '134456729'
)

isbn_verifier_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_17  =: monad define
  Description@.1 ('invalid characters are not ignored after checking length')
  Order@.1 (17)

  NB. isbn=. '3132P34035'
  NB. expected=. 0
  assert 0 -: isvalid '3132P34035'
)

isbn_verifier_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_18  =: monad define
  Description@.1 ('invalid characters are not ignored before checking length')
  Order@.1 (18)

  NB. isbn=. '3598P215088'
  NB. expected=. 0
  assert 0 -: isvalid '3598P215088'
)

isbn_verifier_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_isbn_verifier_test_19  =: monad define
  Description@.1 ('input is too long but contains a valid isbn')
  Order@.1 (19)

  NB. isbn=. '98245726788'
  NB. expected=. 0
  assert 0 -: isvalid '98245726788'
)
