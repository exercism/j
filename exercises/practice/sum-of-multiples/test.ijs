load'sum-of-multiples.ijs'

before_all=: monad define
  order=: i.0
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)


no_multiples_within_limit_ignore=: 0
test_no_multiples_within_limit  =: monad define
  order=: order, 1
  assert 0 = 3 5 sm 1
)

one_factor_has_multiples_within_limit_ignore=: 1 NB. Change this value to 0 to run this test
test_one_factor_has_multiples_within_limit  =: monad define
  order=: order, 2
  assert 3 = 3 5 sm 4
)

more_than_one_multiple_within_limit_ignore=: 1 NB. Change this value to 0 to run this test
test_more_than_one_multiple_within_limit  =: monad define
  order=: order, 3
  assert 9 = (1$3) sm 7
)

more_than_one_fact_w_multpl_within_lim_ignore=: 1 NB. Change this value to 0 to run this test
test_more_than_one_fact_w_multpl_within_lim  =: monad define
  order=: order, 4
  assert 23 = 3 5 sm 10
)

each_multiple_is_only_counted_once_ignore=: 1 NB. Change this value to 0 to run this test
test_each_multiple_is_only_counted_once  =: monad define
  order=: order, 5
  assert 2318 = 3 5 sm 100
)

a_much_larger_limit_ignore=: 1 NB. Change this value to 0 to run this test
test_a_much_larger_limit  =: monad define
  order=: order, 6
  assert 233168 = 3 5 sm 1000
)

three_factors_ignore=: 1 NB. Change this value to 0 to run this test
test_three_factors  =: monad define
  order=: order, 7
  assert 51 = 7 13 17 sm 20
)

factors_not_relatively_prime_ignore=: 1 NB. Change this value to 0 to run this test
test_factors_not_relatively_prime  =: monad define
  order=: order, 8
  assert 30 = 4 6 sm 15
)

one_factor_is_a_multiple_of_another_ignore=: 1 NB. Change this value to 0 to run this test
test_one_factor_is_a_multiple_of_another  =: monad define
  order=: order, 9
  assert 275 = 5 25 sm 51
)

much_larger_factors_ignore=: 1 NB. Change this value to 0 to run this test
test_much_larger_factors  =: monad define
  order=: order, 10
  assert 2203160 = 43 47 sm 10000
)

all_numbers_are_multiples_of_1_ignore=: 1 NB. Change this value to 0 to run this test
test_all_numbers_are_multiples_of_1  =: monad define
  order=: order, 11
  assert 4950 = (1$1) sm 100
)

the_only_multiple_of_0_is_0_ignore=: 1 NB. Change this value to 0 to run this test
test_the_only_multiple_of_0_is_0  =: monad define
  order=: order, 12
  assert 0 = 0 sm 1
)

factor_0_not_affect_sum_of_other_factors_ignore=: 1 NB. Change this value to 0 to run this test
test_factor_0_not_affect_sum_of_other_factors  =: monad define
  order=: order, 13
  assert 3 = 3 0 sm 4
)

items_set_has_cardinality_greater_than_3_ignore=: 1 NB. Change this value to 0 to run this test
test_items_set_has_cardinality_greater_than_3  =: monad define
  order=: order, 14
  assert 39614537 = 2 3 5 7 11 sm 10000
)
