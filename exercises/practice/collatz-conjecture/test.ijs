load 'collatz-conjecture.ijs'


collatz_conjecture_test_01_ignore=: 0
test_collatz_conjecture_test_01  =: monad define
  Description=: 'zero steps for one'


  NB. number   =. 1
  NB. expected =. 0
  assert 0 -: steps 1
)

collatz_conjecture_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_collatz_conjecture_test_02  =: monad define
  Description=: 'divide if even'


  NB. number   =. 16
  NB. expected =. 4
  assert 4 -: steps 16
)

collatz_conjecture_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_collatz_conjecture_test_03  =: monad define
  Description=: 'even and odd steps'


  NB. number   =. 12
  NB. expected =. 9
  assert 9 -: steps 12
)

collatz_conjecture_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_collatz_conjecture_test_04  =: monad define
  Description=: 'large number of even and odd steps'


  NB. number   =. 1000000
  NB. expected =. 152
  assert 152 -: steps 1000000
)

NB. Error cases
NB. ===============================================================================================

collatz_conjecture_test_05_ignore=: 1 NB. Change this value to 0 to run this test
collatz_conjecture_test_05_expect=: 'domain error'
test_collatz_conjecture_test_05  =: monad define
  Description=: 'zero is an error'


  NB. number   =. 0
  NB. expected =. 0 NB. error=. 'Only positive integers are allowed: domain'
  assert 0 -: steps 0
)

collatz_conjecture_test_06_ignore=: 1 NB. Change this value to 0 to run this test
collatz_conjecture_test_06_expect=: 'domain error'
test_collatz_conjecture_test_06  =: monad define
  Description=: 'negative value is an error'


  NB. number   =. _15
  NB. expected =. 0  NB. error=. 'Only positive integers are allowed: domain'
  assert 0 -: steps _15
)

