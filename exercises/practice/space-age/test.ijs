load 'space-age.ijs'

equal_within  =: {{ |@- <:!.0 m * >.&| }}

before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 ''
)


space_age_test_01_ignore=: 0
test_space_age_test_01  =: monad define
  Description@.1 ('age on Earth')
  Order@.1 (1)

  NB. planet=. 'Earth'
  NB. seconds=. 1000000000
  NB. expected=. 31.69
  assert 31.69 (0.01 equal_within) 'Earth' age 1000000000
)

space_age_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_space_age_test_02  =: monad define
  Description@.1 ('age on Mercury')
  Order@.1 (2)

  NB. planet=. 'Mercury'
  NB. seconds=. 2134835688
  NB. expected=. 280.88
  assert 280.88 (0.01 equal_within) 'Mercury' age 2134835688
)

space_age_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_space_age_test_03  =: monad define
  Description@.1 ('age on Venus')
  Order@.1 (3)

  NB. planet=. 'Venus'
  NB. seconds=. 189839836
  NB. expected=. 9.78
  assert 9.78 (0.01 equal_within) 'Venus' age 189839836
)

space_age_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_space_age_test_04  =: monad define
  Description@.1 ('age on Mars')
  Order@.1 (4)

  NB. planet=. 'Mars'
  NB. seconds=. 2129871239
  NB. expected=. 35.88
  assert 35.88 (0.01 equal_within) 'Mars' age 2129871239
)

space_age_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_space_age_test_05  =: monad define
  Description@.1 ('age on Jupiter')
  Order@.1 (5)

  NB. planet=. 'Jupiter'
  NB. seconds=. 901876382
  NB. expected=. 2.41
  assert 2.41 (0.01 equal_within) 'Jupiter' age 901876382
)

space_age_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_space_age_test_06  =: monad define
  Description@.1 ('age on Saturn')
  Order@.1 (6)

  NB. planet=. 'Saturn'
  NB. seconds=. 2000000000
  NB. expected=. 2.15
  assert 2.15 (0.01 equal_within) 'Saturn' age 2000000000
)

space_age_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_space_age_test_07  =: monad define
  Description@.1 ('age on Uranus')
  Order@.1 (7)

  NB. planet=. 'Uranus'
  NB. seconds=. 1210123456
  NB. expected=. 0.46
  assert 0.46 (0.01 equal_within) 'Uranus' age 1210123456
)

space_age_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_space_age_test_08  =: monad define
  Description@.1 ('age on Neptune')
  Order@.1 (8)

  NB. planet=. 'Neptune'
  NB. seconds=. 1821023456
  NB. expected=. 0.35
  assert 0.35 (0.01 equal_within) 'Neptune' age 1821023456
)

space_age_test_09_ignore=: 1 NB. Change this value to 0 to run this test
space_age_test_09_expect=: 'index error'
test_space_age_test_09  =: monad define
  Description@.1 ('invalid planet causes error')
  Order@.1 (9)

  NB. planet=. 'Sun'
  NB. seconds=. 680804807
  NB. expected=.   NB. error=. 'not a planet'
  assert 'Sun' age 680804807
)

