load 'darts.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


darts_test_01_ignore=: 0
test_darts_test_01  =: monad define
  Description@.1 ('Missed target')
  Order@.1 (1)

  NB. x=. _9
  NB. y=. 9
  NB. expected=. 0
  assert 0 -: score _9 9
)

darts_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_02  =: monad define
  Description@.1 ('On the outer circle')
  Order@.1 (2)

  NB. x=. 0
  NB. y=. 10
  NB. expected=. 1
  assert 1 -: score 0 10
)

darts_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_03  =: monad define
  Description@.1 ('On the middle circle')
  Order@.1 (3)

  NB. x=. _5
  NB. y=. 0
  NB. expected=. 5
  assert 5 -: score _5 0
)

darts_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_04  =: monad define
  Description@.1 ('On the inner circle')
  Order@.1 (4)

  NB. x=. 0
  NB. y=. _1
  NB. expected=. 10
  assert 10 -: score 0 _1
)

darts_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_05  =: monad define
  Description@.1 ('Exactly on center')
  Order@.1 (5)

  NB. x=. 0
  NB. y=. 0
  NB. expected=. 10
  assert 10 -: score 0 0
)

darts_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_06  =: monad define
  Description@.1 ('Near the center')
  Order@.1 (6)

  NB. x=. _0.100000000000000006
  NB. y=. _0.100000000000000006
  NB. expected=. 10
  assert 10 -: score _0.100000000000000006 _0.100000000000000006
)

darts_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_07  =: monad define
  Description@.1 ('Just within the inner circle')
  Order@.1 (7)

  NB. x=. 0.699999999999999956
  NB. y=. 0.699999999999999956
  NB. expected=. 10
  assert 10 -: score 0.699999999999999956 0.699999999999999956
)

darts_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_08  =: monad define
  Description@.1 ('Just outside the inner circle')
  Order@.1 (8)

  NB. x=. 0.800000000000000044
  NB. y=. _0.800000000000000044
  NB. expected=. 5
  assert 5 -: score 0.800000000000000044 _0.800000000000000044
)

darts_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_09  =: monad define
  Description@.1 ('Just within the middle circle')
  Order@.1 (9)

  NB. x=. _3.5
  NB. y=. 3.5
  NB. expected=. 5
  assert 5 -: score _3.5 3.5
)

darts_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_10  =: monad define
  Description@.1 ('Just outside the middle circle')
  Order@.1 (10)

  NB. x=. _3.60000000000000009
  NB. y=. _3.60000000000000009
  NB. expected=. 1
  assert 1 -: score _3.60000000000000009 _3.60000000000000009
)

darts_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_11  =: monad define
  Description@.1 ('Just within the outer circle')
  Order@.1 (11)

  NB. x=. _7
  NB. y=. 7
  NB. expected=. 1
  assert 1 -: score _7 7
)

darts_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_12  =: monad define
  Description@.1 ('Just outside the outer circle')
  Order@.1 (12)

  NB. x=. 7.09999999999999964
  NB. y=. _7.09999999999999964
  NB. expected=. 0
  assert 0 -: score 7.09999999999999964 _7.09999999999999964
)

darts_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_darts_test_13  =: monad define
  Description@.1 ('Asymmetric position between the inner and middle circles')
  Order@.1 (13)

  NB. x=. 0.5
  NB. y=. _4
  NB. expected=. 5
  assert 5 -: score 0.5 _4
)
