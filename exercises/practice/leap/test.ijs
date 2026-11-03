load 'leap.ijs'


leap_test_01_ignore=: 0
test_leap_test_01  =: monad define
  Description=: 'year not divisible by 4 in common year'

  
  NB. year    =. 2015
  NB. expected=. 0
  assert 0 -: leapYear 2015
)

leap_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_leap_test_02  =: monad define
  Description=: 'year divisible by 2, not divisible by 4 in common year'


  NB. year    =. 1970
  NB. expected=. 0
  assert 0 -: leapYear 1970
)

leap_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_leap_test_03  =: monad define
  Description=: 'year divisible by 4, not divisible by 100 in leap year'


  NB. year    =. 1996
  NB. expected=.  1
  assert 1 -: leapYear 1996
)

leap_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_leap_test_04  =: monad define
  Description=: 'year divisible by 4 and 5 is still a leap year'


  NB. year    =. 1960
  NB. expected=. 1
  assert 1 -: leapYear 1960
)

leap_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_leap_test_05  =: monad define
  Description=: 'year divisible by 100, not divisible by 400 in common year'


  NB. year    =. 2100
  NB. expected=. 0
  assert 0 -: leapYear 2100
)

leap_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_leap_test_06  =: monad define
  Description=: 'year divisible by 100 but not by 3 is still not a leap year'


  NB. year    =. 1900
  NB. expected=. 0
  assert 0 -: leapYear 1900
)

leap_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_leap_test_07  =: monad define
  Description=: 'year divisible by 400 is leap year'

  
  NB. year    =. 2000
  NB. expected=. 1
  assert 1 -: leapYear 2000
)

leap_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_leap_test_08  =: monad define
  Description=: 'year divisible by 400 but not by 125 is still a leap year'


  NB. year    =. 2400
  NB. expected=. 1
  assert 1 -: leapYear 2400
)

leap_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_leap_test_09  =: monad define
  Description=: 'year divisible by 200, not divisible by 400 in common year'


  NB. year    =. 1800
  NB. expected=. 0
  assert 0 -: leapYear 1800
)
