load 'sum-of-multiples.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


sum_of_multiples_test_01_ignore=: 0
test_sum_of_multiples_test_01  =: monad define
  Description@.1 ('no multiples within limit')
  Order@.1 (1)

  factors =. 3 5
  limit   =. 1
  expected=. 0
  assert expected -: factors sum limit
)

sum_of_multiples_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_02  =: monad define
  Description@.1 ('one factor has multiples within limit')
  Order@.1 (2)

  factors =. 3 5
  limit   =. 4
  expected=. 3
  assert expected -: factors sum limit
)

sum_of_multiples_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_03  =: monad define
  Description@.1 ('more than one multiple within limit')
  Order@.1 (3)

  factors =. 1$3
  limit   =. 7
  expected=. 9
  assert expected -: factors sum limit
)

sum_of_multiples_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_04  =: monad define
  Description@.1 ('more than one factor with multiples within limit')
  Order@.1 (4)

  factors =. 3 5
  limit   =. 10
  expected=. 23
  assert expected -: factors sum limit
)

sum_of_multiples_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_05  =: monad define
  Description@.1 ('each multiple is only counted once')
  Order@.1 (5)

  factors =. 3 5
  limit   =. 100
  expected=. 2318
  assert expected -: factors sum limit
)

sum_of_multiples_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_06  =: monad define
  Description@.1 ('a much larger limit')
  Order@.1 (6)

  factors =. 3 5
  limit   =. 100
  expected=. 2318
  assert expected -: factors sum limit
)

sum_of_multiples_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_07  =: monad define
  Description@.1 ('three factors')
  Order@.1 (7)

  factors =. 7 13 17
  limit   =. 20
  expected=. 51
  assert expected -: factors sum limit
)

sum_of_multiples_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_08  =: monad define
  Description@.1 ('factors not relatively prime')
  Order@.1 (8)

  factors =. 4 6
  limit   =. 15
  expected=. 30
  assert expected -: factors sum limit
)

sum_of_multiples_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_09  =: monad define
  Description@.1 ('some pairs of factors relatively prime and some not')
  Order@.1 (9)

  factors =. 5 6 8
  limit   =. 150
  expected=. 4419
  assert expected -: factors sum limit
)

sum_of_multiples_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_10  =: monad define
  Description@.1 ('one factor is a multiple of another')
  Order@.1 (10)

  factors =. 5 25
  limit   =. 51
  expected=. 275
  assert expected -: factors sum limit
)

sum_of_multiples_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_11  =: monad define
  Description@.1 ('much larger factors')
  Order@.1 (11)

  factors =. 43 47
  limit   =. 10000
  expected=. 2203160
  assert expected -: factors sum limit
)

sum_of_multiples_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_12  =: monad define
  Description@.1 ('all numbers are multiples of 1')
  Order@.1 (12)

  factors =. 1$1
  limit   =. 100
  expected=. 4950
  assert expected -: factors sum limit
)

sum_of_multiples_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_13  =: monad define
  Description@.1 ('no factors means an empty sum')
  Order@.1 (13)

  factors =. ''
  limit   =. 10000
  expected=. 0
  assert expected -: factors sum limit
)

sum_of_multiples_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_14  =: monad define
  Description@.1 ('the only multiple of 0 is 0')
  Order@.1 (14)

  factors =. 1$0
  limit   =. 1
  expected=. 0
  assert expected -: factors sum limit
)

sum_of_multiples_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_15  =: monad define
  Description@.1 ('the factor 0 does not affect the sum of multiples of other factors')
  Order@.1 (15)

  factors =. 3 0
  limit   =. 4
  expected=. 3
  assert expected -: factors sum limit
)

sum_of_multiples_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_16  =: monad define
  Description@.1 ('solutions using include-exclude must extend to cardinality greater than 3')
  Order@.1 (16)

  factors =. 2 3 5 7 11
  limit   =. 10000
  expected=. 39614537
  assert expected -: factors sum limit
)

