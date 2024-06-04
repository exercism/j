load 'armstrong-numbers.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


armstrong_numbers_test_01_ignore=: 0
test_armstrong_numbers_test_01  =: monad define
  Description@.1 ('Zero is an Armstrong number')
  Order@.1 (1)

  NB. number=. 0
  NB. expected=. 1
  assert 1 -: is_armstrong_number 0
)

armstrong_numbers_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_02  =: monad define
  Description@.1 ('Single-digit numbers are Armstrong numbers')
  Order@.1 (2)

  NB. number=. 5
  NB. expected=. 1
  assert 1 -: is_armstrong_number 5
)

armstrong_numbers_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_03  =: monad define
  Description@.1 ('There are no two-digit Armstrong numbers')
  Order@.1 (3)

  NB. number=. 10
  NB. expected=. 0
  assert 0 -: is_armstrong_number 10
)

armstrong_numbers_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_04  =: monad define
  Description@.1 ('Three-digit number that is an Armstrong number')
  Order@.1 (4)

  NB. number=. 153
  NB. expected=. 1
  assert 1 -: is_armstrong_number 153
)

armstrong_numbers_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_05  =: monad define
  Description@.1 ('Three-digit number that is not an Armstrong number')
  Order@.1 (5)

  NB. number=. 100
  NB. expected=. 0
  assert 0 -: is_armstrong_number 100
)

armstrong_numbers_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_06  =: monad define
  Description@.1 ('Four-digit number that is an Armstrong number')
  Order@.1 (6)

  NB. number=. 9474
  NB. expected=. 1
  assert 1 -: is_armstrong_number 9474
)

armstrong_numbers_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_07  =: monad define
  Description@.1 ('Four-digit number that is not an Armstrong number')
  Order@.1 (7)

  NB. number=. 9475
  NB. expected=. 0
  assert 0 -: is_armstrong_number 9475
)

armstrong_numbers_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_08  =: monad define
  Description@.1 ('Seven-digit number that is an Armstrong number')
  Order@.1 (8)

  NB. number=. 9926315
  NB. expected=. 1
  assert 1 -: is_armstrong_number 9926315
)

armstrong_numbers_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_09  =: monad define
  Description@.1 ('Seven-digit number that is not an Armstrong number')
  Order@.1 (9)

  NB. number=. 9926314
  NB. expected=. 0
  assert 0 -: is_armstrong_number 9926314
)

armstrong_numbers_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_10  =: monad define
  Description@.1 ('Armstrong number containing seven zeroes')
  Order@.1 (10)

  NB. number=. 186709961001538790100634132976990
  NB. expected=. 1
  assert 1 -: is_armstrong_number 186709961001538790100634132976990x
)

armstrong_numbers_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_armstrong_numbers_test_11  =: monad define
  Description@.1 ('The largest and last Armstrong number')
  Order@.1 (11)

  NB. number=. 115132219018763992565095597973971522401
  NB. expected=. 1
  assert 1 -: is_armstrong_number 115132219018763992565095597973971522401x
)

