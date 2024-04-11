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

  NB. factors=. 3 5
  NB. limit=. 1
  NB. expected=. 0
  assert 0 = 3 5 sum 1
)

sum_of_multiples_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_02  =: monad define
  Description@.1 ('one factor has multiples within limit')
  Order@.1 (2)

  NB. factors=. 3 5
  NB. limit=. 4
  NB. expected=. 3
  assert 3 = 3 5  sum 4
)

sum_of_multiples_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_03  =: monad define
  Description@.1 ('more than one multiple within limit')
  Order@.1 (3)

  NB. factors=. 1$3
  NB. limit=. 7
  NB. expected=. 9
  assert 9 = (1$3) sum 7
)

sum_of_multiples_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_04  =: monad define
  Description@.1 ('more than one factor with multiples within limit')
  Order@.1 (4)

  NB. factors=. 3 5
  NB. limit=. 10
  NB. expected=. 23
  assert 23 = 3 5 sum 10
)

sum_of_multiples_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_05  =: monad define
  Description@.1 ('each multiple is only counted once')
  Order@.1 (5)

  NB. factors=. 3 5
  NB. limit=. 100
  NB. expected=. 2318
  assert 2318 = 3 5 sum 100
)

sum_of_multiples_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_06  =: monad define
  Description@.1 ('a much larger limit')
  Order@.1 (6)

  NB. factors=. 3 5
  NB. limit=. 1000
  NB. expected=. 233168
  assert 233168 = 3 5 sum 100
)

sum_of_multiples_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_07  =: monad define
  Description@.1 ('three factors')
  Order@.1 (7)

  NB. factors=. 7 13 17
  NB. limit=. 20
  NB. expected=. 51
  assert 51 = 7 13 17 sum 20
)

sum_of_multiples_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_08  =: monad define
  Description@.1 ('factors not relatively prime')
  Order@.1 (8)

  NB. factors=. 4 6
  NB. limit=. 15
  NB. expected=. 30
  assert 30 = (1$15) sum 30
)

sum_of_multiples_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_09  =: monad define
  Description@.1 ('some pairs of factors relatively prime and some not')
  Order@.1 (9)

  NB. factors=. 5 6 8
  NB. limit=. 150
  NB. expected=. 4419
  assert 4419 = 5 6 8 sum 150
)

sum_of_multiples_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_10  =: monad define
  Description@.1 ('one factor is a multiple of another')
  Order@.1 (10)

  NB. factors=. 5 25
  NB. limit=. 51
  NB. expected=. 275
  assert 275 = 5 25 sum 275
)

sum_of_multiples_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_11  =: monad define
  Description@.1 ('much larger factors')
  Order@.1 (11)

  NB. factors=. 43 47
  NB. limit=. 10000
  NB. expected=. 2203160
  assert 2203160 =  43 47 sum 10000
)

sum_of_multiples_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_12  =: monad define
  Description@.1 ('all numbers are multiples of 1')
  Order@.1 (12)

  NB. factors=. 1$1
  NB. limit=. 100
  NB. expected=. 4950
  assert 4950 = (1$1) sum 100
)

sum_of_multiples_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_13  =: monad define
  Description@.1 ('no factors means an empty sum')
  Order@.1 (13)

  NB. factors=. (1$'')
  NB. limit=. 10000
  NB. expected=. 0
  assert 0 = (1$'') sum 10000
)

sum_of_multiples_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_14  =: monad define
  Description@.1 ('the only multiple of 0 is 0')
  Order@.1 (14)

  NB. factors=. 1$0
  NB. limit=. 1
  NB. expected=. 0
  assert 0 = (1$0) sum 1
)

sum_of_multiples_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_15  =: monad define
  Description@.1 ('the factor 0 does not affect the sum of multiples of other factors')
  Order@.1 (15)

  NB. factors=. 3 0
  NB. limit=. 4
  NB. expected=. 3
  assert 3 = 3 0 sum 4
)

sum_of_multiples_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_multiples_test_16  =: monad define
  Description@.1 ('solutions using include-exclude must extend to cardinality greater than 3')
  Order@.1 (16)

  NB. factors=. 2 3 5 7 11
  NB. limit=. 10000
  NB. expected=. 39614537
  assert 39614537 = 2 3 5 7 11 sum 10000
)

