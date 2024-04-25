load 'collatz-conjecture.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


collatz_conjecture_test_01_ignore=: 0
test_collatz_conjecture_test_01  =: monad define
  Description@.1 ('zero steps for one')
  Order@.1 (1)

  number   =. 1
  expected =. 0
  assert expected -: steps number
)

collatz_conjecture_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_collatz_conjecture_test_02  =: monad define
  Description@.1 ('divide if even')
  Order@.1 (2)

  number   =. 16
  expected =. 4
  assert expected -: steps number
)

collatz_conjecture_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_collatz_conjecture_test_03  =: monad define
  Description@.1 ('even and odd steps')
  Order@.1 (3)

  number   =. 12
  expected =. 9
  assert expected -: steps number
)

collatz_conjecture_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_collatz_conjecture_test_04  =: monad define
  Description@.1 ('large number of even and odd steps')
  Order@.1 (4)

  number   =. 1000000
  expected =. 152
  assert expected -: steps number
)

NB. Error cases
NB. ===============================================================================================

collatz_conjecture_test_05_ignore=: 1 NB. Change this value to 0 to run this test
collatz_conjecture_test_05_expect=: 'domain error'
test_collatz_conjecture_test_05  =: monad define
  Description@.1 ('zero is an error')
  Order@.1 (5)

  number   =. 0
  expected =. 0 NB. error=. 'Only positive integers are allowed: domain'
  assert expected -: steps number
)

collatz_conjecture_test_06_ignore=: 1 NB. Change this value to 0 to run this test
collatz_conjecture_test_06_expect=: 'domain error'
test_collatz_conjecture_test_06  =: monad define
  Description@.1 ('negative value is an error')
  Order@.1 (6)

  number   =. _15
  expected =. 0  NB. error=. 'Only positive integers are allowed: domain'
  assert expected -: steps number
)

