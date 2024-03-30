load 'leap.ijs'

before_all=: monad define  
  order=: i.0
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)


not_divisible_by_4_in_common_year_ignore=: 0
test_not_divisible_by_4_in_common_year  =: monad define
  order=: order,1
  assert 0 = leap 2015
)

div_by_2_but_not_div_by_4_common_year_ignore=: 1 NB. Change this value to 0 to run this test
test_div_by_2_but_not_div_by_4_common_year  =: monad define
  order=: order,2
  assert 0 = leap 1970
)

div_by_4_but_not_div_by_100_leap_year_ignore=: 1 NB. Change this value to 0 to run this test
test_div_by_4_but_not_div_by_100_leap_year  =: monad define
  order=: order,3
  assert 1 = leap 1996
)

div_by_4_and_5_is_a_leap_year_ignore=: 1 NB. Change this value to 0 to run this test
test_div_by_4_and_5_is_a_leap_year  =: monad define
  order=: order,4
  assert 1 = leap 1960
)

div_by_100_but_not_div_by_400_common_yea_ignore=: 1 NB. Change this value to 0 to run this test
test_div_by_100_but_not_div_by_400_common_yea  =: monad define
  order=: order,5
  assert 0 = leap 2100
)

div_by_100_but_not_by_3_is_not_leap_year_ignore=: 1 NB. Change this value to 0 to run this test
test_div_by_100_but_not_by_3_is_not_leap_year  =: monad define
  order=: order,6
  assert 0 = leap 1900
)

divisible_by_400_is_leap_year_ignore=: 1 NB. Change this value to 0 to run this test
test_divisible_by_400_is_leap_year  =: monad define
  order=: order,7
  assert 1 = leap 2000
)

div_by_400_but_not_by_125_is_a_leap_year_ignore=: 1 NB. Change this value to 0 to run this test
test_div_by_400_but_not_by_125_is_a_leap_year  =: monad define
  order=: order,8
  assert 1 = leap 2400
)

div_by_200_not_div_by_400_in_common_year_ignore=: 1 NB. Change this value to 0 to run this test
test_div_by_200_not_div_by_400_in_common_year  =: monad define
  order=: order,9
  assert 0 = leap 1800
)
