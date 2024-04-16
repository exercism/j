load 'yacht.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


yacht_test_01_ignore=: 0
test_yacht_test_01  =: monad define
  Description@.1 ('Yacht')
  Order@.1 (1)

  NB. dice=. 5 5 5 5 5
  NB. category=. 'yacht'
  NB. expected=. 50
  assert 50 -: 'yacht' score 5 5 5 5 5
)

yacht_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_02  =: monad define
  Description@.1 ('Not Yacht')
  Order@.1 (2)

  NB. dice=. 1 3 3 2 5
  NB. category=. 'yacht'
  NB. expected=. 0
  assert 0 -: 'yacht' score 1 3 3 2 5
)

yacht_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_03  =: monad define
  Description@.1 ('Ones')
  Order@.1 (3)

  NB. dice=. 1 1 1 3 5
  NB. category=. 'ones'
  NB. expected=. 3
  assert 3 -: 'ones' score 1 1 1 3 5
)

yacht_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_04  =: monad define
  Description@.1 ('Ones, out of order')
  Order@.1 (4)

  NB. dice=. 3 1 1 5 1
  NB. category=. 'ones'
  NB. expected=. 3
  assert 3 -: 'ones' score 3 1 1 5 1
)

yacht_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_05  =: monad define
  Description@.1 ('No ones')
  Order@.1 (5)

  NB. dice=. 4 3 6 5 5
  NB. category=. 'ones'
  NB. expected=. 0
  assert 0 -: 'ones' score 4 3 6 5 5
)

yacht_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_06  =: monad define
  Description@.1 ('Twos')
  Order@.1 (6)

  NB. dice=. 2 3 4 5 6
  NB. category=. 'twos'
  NB. expected=. 2
  assert 2 -: 'twos' score 2 3 4 5 6
)

yacht_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_07  =: monad define
  Description@.1 ('Fours')
  Order@.1 (7)

  NB. dice=. 1 4 1 4 1
  NB. category=. 'fours'
  NB. expected=. 8
  assert 8 -: 'fours' score 1 4 1 4 1
)

yacht_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_08  =: monad define
  Description@.1 ('Yacht counted as threes')
  Order@.1 (8)

  NB. dice=. 3 3 3 3 3
  NB. category=. 'threes'
  NB. expected=. 15
  assert 15 -: 'threes' score 3 3 3 3 3
)

yacht_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_09  =: monad define
  Description@.1 ('Yacht of 3s counted as fives')
  Order@.1 (9)

  NB. dice=. 3 3 3 3 3
  NB. category=. 'fives'
  NB. expected=. 0
  assert 0 -: 'fives' score 3 3 3 3 3
)

yacht_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_10  =: monad define
  Description@.1 ('Fives')
  Order@.1 (10)

  NB. dice=. 1 5 3 5 3
  NB. category=. 'fives'
  NB. expected=. 10
  assert 10 -: 'fives' score 1 5 3 5 3
)

yacht_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_11  =: monad define
  Description@.1 ('Sixes')
  Order@.1 (11)

  NB. dice=. 2 3 4 5 6
  NB. category=. 'sixes'
  NB. expected=. 6
  assert 6 -: 'sixes' score 2 3 4 5 6
)

yacht_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_12  =: monad define
  Description@.1 ('Full house two small, three big')
  Order@.1 (12)

  NB. dice=. 2 2 4 4 4
  NB. category=. 'full_house'
  NB. expected=. 16
  assert 16 -: 'full_house' score 2 2 4 4 4
)

yacht_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_13  =: monad define
  Description@.1 ('Full house three small, two big')
  Order@.1 (13)

  NB. dice=. 5 3 3 5 3
  NB. category=. 'full_house'
  NB. expected=. 19
  assert 19 -: 'full_house' score 5 3 3 5 3
)

yacht_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_14  =: monad define
  Description@.1 ('Two pair is not a full_house')
  Order@.1 (14)

  NB. dice=. 2 2 4 4 5
  NB. category=. 'full_house'
  NB. expected=. 0
  assert 0 -: 'full_house' score 2 2 4 4 5
)

yacht_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_15  =: monad define
  Description@.1 ('Four of a kind is not a full_house')
  Order@.1 (15)

  NB. dice=. 1 4 4 4 4
  NB. category=. 'full_house'
  NB. expected=. 0
  assert 0 -: 'full_house' score 1 4 4 4 4
)

yacht_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_16  =: monad define
  Description@.1 ('Yacht is not a full_house')
  Order@.1 (16)

  NB. dice=. 2 2 2 2 2
  NB. category=. 'full_house'
  NB. expected=. 0
  assert 0 -: 'full_house' score 2 2 2 2 2
)

yacht_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_17  =: monad define
  Description@.1 ('Four of a Kind')
  Order@.1 (17)

  NB. dice=. 6 6 4 6 6
  NB. category=. 'four_of_a_kind'
  NB. expected=. 24
  assert 24 -: 'four_of_a_kind' score 6 6 4 6 6
)

yacht_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_18  =: monad define
  Description@.1 ('Yacht can be scored as Four of a Kind')
  Order@.1 (18)

  NB. dice=. 3 3 3 3 3
  NB. category=. 'four_of_a_kind'
  NB. expected=. 12
  assert 12 -: 'four_of_a_kind' score 3 3 3 3 3
)

yacht_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_19  =: monad define
  Description@.1 ('Full house is not Four of a Kind')
  Order@.1 (19)

  NB. dice=. 3 3 3 5 5
  NB. category=. 'four_of_a_kind'
  NB. expected=. 0
  assert 0 -: 'four_of_a_kind' score 3 3 3 5 5
)

yacht_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_20  =: monad define
  Description@.1 ('Little Straight')
  Order@.1 (20)

  NB. dice=. 3 5 4 1 2
  NB. category=. 'little_straight'
  NB. expected=. 30
  assert 30 -: 'little_straight' score 3 5 4 1 2
)

yacht_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_21  =: monad define
  Description@.1 ('Little Straight as Big Straight')
  Order@.1 (21)

  NB. dice=. 1 2 3 4 5
  NB. category=. 'big_straight'
  NB. expected=. 0
  assert 0 -: 'big_straight' score 1 2 3 4 5
)

yacht_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_22  =: monad define
  Description@.1 ('Four in order but not a little_straight')
  Order@.1 (22)

  NB. dice=. 1 1 2 3 4
  NB. category=. 'little_straight'
  NB. expected=. 0
  assert 0 -: 'little_straight' score 1 1 2 3 4
)

yacht_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_23  =: monad define
  Description@.1 ('No pairs but not a little_straight')
  Order@.1 (23)

  NB. dice=. 1 2 3 4 6
  NB. category=. 'little_straight'
  NB. expected=. 0
  assert 0 -: 'little_straight' score 1 2 3 4 6
)

yacht_test_24_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_24  =: monad define
  Description@.1 ('Minimum is 1, maximum is 5, but not a little_straight')
  Order@.1 (24)

  NB. dice=. 1 1 3 4 5
  NB. category=. 'little_straight'
  NB. expected=. 0
  assert 0 -: 'little_straight' score 1 1 3 4 5
)

yacht_test_25_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_25  =: monad define
  Description@.1 ('Big Straight')
  Order@.1 (25)

  NB. dice=. 4 6 2 5 3
  NB. category=. 'big_straight'
  NB. expected=. 30
  assert 30 -: 'big_straight' score 4 6 2 5 3
)

yacht_test_26_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_26  =: monad define
  Description@.1 ('Big Straight as little_straight')
  Order@.1 (26)

  NB. dice=. 6 5 4 3 2
  NB. category=. 'little_straight'
  NB. expected=. 0
  assert 0 -: 'little_straight' score 6 5 4 3 2
)

yacht_test_27_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_27  =: monad define
  Description@.1 ('No pairs but not a big_straight')
  Order@.1 (27)

  NB. dice=. 6 5 4 3 1
  NB. category=. 'big_straight'
  NB. expected=. 0
  assert 0 -: 'big_straight' score 6 5 4 3 1
)

yacht_test_28_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_28  =: monad define
  Description@.1 ('Choice')
  Order@.1 (28)

  NB. dice=. 3 3 5 6 6
  NB. category=. 'choice'
  NB. expected=. 23
  assert 23 -: 'choice' score 3 3 5 6 6 
)

yacht_test_29_ignore=: 1 NB. Change this value to 0 to run this test
test_yacht_test_29  =: monad define
  Description@.1 ('Yacht as choice')
  Order@.1 (29)

  NB. dice=. 2 2 2 2 2
  NB. category=. 'choice'
  NB. expected=. 10
  assert 10 -: 'choice' score 2 2 2 2 2
)

