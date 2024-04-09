load 'raindrops.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


raindrops_test_01_ignore=: 0
test_raindrops_test_01  =: monad define
  Description@.1 ('the sound for 1 is 1')
  Order@.1 (1)

  NB. expected=: '1'
  assert '1' = convert 1
)

raindrops_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_02  =: monad define
  Description@.1 ('the sound for 3 is Pling')
  Order@.1 (2)

  NB. expected=: 'Pling'
  assert 'Pling' = convert 3
)

raindrops_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_03  =: monad define
  Description@.1 ('the sound for 5 is Plang')
  Order@.1 (3)

  NB. expected=: 'Plang'
  assert 'Plang' = convert 5
)

raindrops_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_04  =: monad define
  Description@.1 ('the sound for 7 is Plong')
  Order@.1 (4)

  NB. expected=: 'Plong'
  assert 'Plong' = convert 7
)

raindrops_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_05  =: monad define
  Description@.1 ('the sound for 6 is Pling as it has a factor 3')
  Order@.1 (5)

  NB. expected=: 'Pling'
  assert 'Pling' = convert 6
)

raindrops_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_06  =: monad define
  Description@.1 ('2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base')
  Order@.1 (6)

  NB. expected=: '8'
  assert '8' = convert 8
)

raindrops_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_07  =: monad define
  Description@.1 ('the sound for 9 is Pling as it has a factor 3')
  Order@.1 (7)

  NB. expected=: 'Pling'
  assert 'Pling' = convert 9
)

raindrops_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_08  =: monad define
  Description@.1 ('the sound for 10 is Plang as it has a factor 5')
  Order@.1 (8)

  NB. expected=: 'Plang'
  assert 'Plang' = convert 10
)

raindrops_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_09  =: monad define
  Description@.1 ('the sound for 14 is Plong as it has a factor of 7')
  Order@.1 (9)

  NB. expected=: 'Plong'
  assert 'Plong' = convert 14
)

raindrops_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_10  =: monad define
  Description@.1 ('the sound for 15 is PlingPlang as it has factors 3 and 5')
  Order@.1 (10)

  NB. expected=: 'PlingPlang'
  assert 'PlingPlang' = convert 15
)

raindrops_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_11  =: monad define
  Description@.1 ('the sound for 21 is PlingPlong as it has factors 3 and 7')
  Order@.1 (11)

  NB. expected=: 'PlingPlong'
  assert 'PlingPlong' = convert 21
)

raindrops_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_12  =: monad define
  Description@.1 ('the sound for 25 is Plang as it has a factor 5')
  Order@.1 (12)

  NB. expected=: 'Plang'
  assert 'Plang' = convert 25
)

raindrops_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_13  =: monad define
  Description@.1 ('the sound for 27 is Pling as it has a factor 3')
  Order@.1 (13)

  NB. expected=: 'Pling'
  assert 'Pling' = convert 27
)

raindrops_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_14  =: monad define
  Description@.1 ('the sound for 35 is PlangPlong as it has factors 5 and 7')
  Order@.1 (14)

  NB. expected=: 'PlangPlong'
  assert 'PlangPlong' = convert 35
)

raindrops_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_15  =: monad define
  Description@.1 ('the sound for 49 is Plong as it has a factor 7')
  Order@.1 (15)

  NB. expected=: 'Plong'
  assert 'Plong' = convert 49
)

raindrops_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_16  =: monad define
  Description@.1 ('the sound for 52 is 52')
  Order@.1 (16)

  NB. expected=: '52'
  assert '52' = convert 52
)

raindrops_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_17  =: monad define
  Description@.1 ('the sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7')
  Order@.1 (17)

  NB. expected=: 'PlingPlangPlong'
  assert 'PlingPlangPlong' = convert 105
)

raindrops_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_raindrops_test_18  =: monad define
  Description@.1 ('the sound for 3125 is Plang as it has a factor 5')
  Order@.1 (18)

  NB. expected=: 'Plang'
  assert 'Plang' = convert 3125
)
