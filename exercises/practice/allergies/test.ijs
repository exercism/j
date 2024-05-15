load 'allergies.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


allergies_test_01_ignore=: 0
test_allergies_test_01  =: monad define
  Description@.1 ('not allergic to anything')
  Order@.1 (1)

  NB. item     =. 'eggs'
  NB. score    =. 0
  NB. expected =. 0
  assert 0 -: 'eggs' allergic_to 0
)

allergies_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_02  =: monad define
  Description@.1 ('allergic only to eggs')
  Order@.1 (2)

  NB. item     =. 'eggs'
  NB. score    =. 1
  NB. expected =. 1
  assert 1 -: 'eggs' allergic_to 1
)

allergies_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_03  =: monad define
  Description@.1 ('allergic to eggs and something else')
  Order@.1 (3)

  NB. item     =. 'eggs'
  NB. score    =. 3
  NB. expected =. 1
  assert 1 -: 'eggs' allergic_to 3
)

allergies_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_04  =: monad define
  Description@.1 ('allergic to something, but not eggs')
  Order@.1 (4)

  NB. item     =. 'eggs'
  NB. score    =. 2
  NB. expected =. 0
  assert 0 -: 'eggs' allergic_to 2
)

allergies_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_05  =: monad define
  Description@.1 ('allergic to everything')
  Order@.1 (5)

  NB. item     =. 'eggs'
  NB. score    =. 255
  NB. expected =. 1
  assert 1 -: 'eggs' allergic_to 255
)

allergies_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_06  =: monad define
  Description@.1 ('not allergic to anything')
  Order@.1 (6)

  NB. item     =. 'peanuts'
  NB. score    =. 0
  NB. expected =. 0
  assert 0 -: 'peanuts' allergic_to 0
)

allergies_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_07  =: monad define
  Description@.1 ('allergic only to peanuts')
  Order@.1 (7)

  NB. item     =. 'peanuts'
  NB. score    =. 2
  NB. expected =. 1
  assert 1 -: 'peanuts' allergic_to 2
)

allergies_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_08  =: monad define
  Description@.1 ('allergic to peanuts and something else')
  Order@.1 (8)

  NB. item     =. 'peanuts'
  NB. score    =. 7
  NB. expected =. 1
  assert 1 -: 'peanuts' allergic_to 7
)

allergies_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_09  =: monad define
  Description@.1 ('allergic to something, but not peanuts')
  Order@.1 (9)

  NB. item     =. 'peanuts'
  NB. score    =. 5
  NB. expected =. 0
  assert 0 -: 'peanuts' allergic_to 5
)

allergies_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_10  =: monad define
  Description@.1 ('allergic to everything')
  Order@.1 (10)

  NB. item     =. 'peanuts'
  NB. score    =. 255
  NB. expected =. 1
  assert 1 -: 'peanuts' allergic_to 255
)

allergies_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_11  =: monad define
  Description@.1 ('not allergic to anything')
  Order@.1 (11)

  NB. item     =. 'shellfish'
  NB. score    =. 0
  NB. expected =. 0
  assert 0 -: 'shellfish' allergic_to 0
)

allergies_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_12  =: monad define
  Description@.1 ('allergic only to shellfish')
  Order@.1 (12)

  NB. item     =. 'shellfish'
  NB. score    =. 4
  NB. expected =. 1
  assert 1 -: 'shellfish' allergic_to 4
)

allergies_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_13  =: monad define
  Description@.1 ('allergic to shellfish and something else')
  Order@.1 (13)

  NB. item     =. 'shellfish'
  NB. score    =. 14
  NB. expected =. 1
  assert 1 -: 'shellfish' allergic_to 14
)

allergies_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_14  =: monad define
  Description@.1 ('allergic to something, but not shellfish')
  Order@.1 (14)

  NB. item     =. 'shellfish'
  NB. score    =. 10
  NB. expected =. 0
  assert 0 -: 'shellfish' allergic_to 10
)

allergies_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_15  =: monad define
  Description@.1 ('allergic to everything')
  Order@.1 (15)

  NB. item     =. 'shellfish'
  NB. score    =. 255
  NB. expected =. 1
  assert 1 -: 'shellfish' allergic_to 255
)

allergies_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_16  =: monad define
  Description@.1 ('not allergic to anything')
  Order@.1 (16)

  NB. item     =. 'strawberries'
  NB. score    =. 0
  NB. expected =. 0
  assert 0 -: 'strawberries' allergic_to 0
)

allergies_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_17  =: monad define
  Description@.1 ('allergic only to strawberries')
  Order@.1 (17)

  NB. item     =. 'strawberries'
  NB. score    =. 8
  NB. expected =. 1
  assert 1 -: 'strawberries' allergic_to 8
)

allergies_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_18  =: monad define
  Description@.1 ('allergic to strawberries and something else')
  Order@.1 (18)

  NB. item     =. 'strawberries'
  NB. score    =. 28
  NB. expected =. 1
  assert 1 -: 'strawberries' allergic_to 28
)

allergies_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_19  =: monad define
  Description@.1 ('allergic to something, but not strawberries')
  Order@.1 (19)

  NB. item     =. 'strawberries'
  NB. score    =. 20
  NB. expected =. 0
  assert 0 -: 'strawberries' allergic_to 20
)

allergies_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_20  =: monad define
  Description@.1 ('allergic to everything')
  Order@.1 (20)

  NB. item     =. 'strawberries'
  NB. score    =. 255
  NB. expected =. 1
  assert 1 -: 'strawberries' allergic_to 255
)

allergies_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_21  =: monad define
  Description@.1 ('not allergic to anything')
  Order@.1 (21)

  NB. item     =. 'tomatoes'
  NB. score    =. 0
  NB. expected =. 0
  assert 0 -: 'tomatoes' allergic_to 0
)

allergies_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_22  =: monad define
  Description@.1 ('allergic only to tomatoes')
  Order@.1 (22)

  NB. item     =. 'tomatoes'
  NB. score    =. 16
  NB. expected =. 1
  assert 1 -: 'tomatoes' allergic_to 16
)

allergies_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_23  =: monad define
  Description@.1 ('allergic to tomatoes and something else')
  Order@.1 (23)

  NB. item     =. 'tomatoes'
  NB. score    =. 56
  NB. expected =. 1
  assert 1 -: 'tomatoes' allergic_to 56
)

allergies_test_24_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_24  =: monad define
  Description@.1 ('allergic to something, but not tomatoes')
  Order@.1 (24)

  NB. item     =. 'tomatoes'
  NB. score    =. 40
  NB. expected =. 0
  assert 0 -: 'tomatoes' allergic_to 40
)

allergies_test_25_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_25  =: monad define
  Description@.1 ('allergic to everything')
  Order@.1 (25)

  NB. item     =. 'tomatoes'
  NB. score    =. 255
  NB. expected =. 1
  assert 1 -: 'tomatoes' allergic_to 255
)

allergies_test_26_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_26  =: monad define
  Description@.1 ('not allergic to anything')
  Order@.1 (26)

  NB. item     =. 'chocolate'
  NB. score    =. 0
  NB. expected =. 0
  assert 0 -: 'chocolate' allergic_to 0
)

allergies_test_27_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_27  =: monad define
  Description@.1 ('allergic only to chocolate')
  Order@.1 (27)

  NB. item     =. 'chocolate'
  NB. score    =. 32
  NB. expected =. 1
  assert 1 -: 'chocolate' allergic_to 32
)

allergies_test_28_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_28  =: monad define
  Description@.1 ('allergic to chocolate and something else')
  Order@.1 (28)

  NB. item     =. 'chocolate'
  NB. score    =. 112
  NB. expected =. 1
  assert 1 -: 'chocolate' allergic_to 112
)

allergies_test_29_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_29  =: monad define
  Description@.1 ('allergic to something, but not chocolate')
  Order@.1 (29)

  NB. item     =. 'chocolate'
  NB. score    =. 80
  NB. expected =. 0
  assert 0 -: 'chocolate' allergic_to 80
)

allergies_test_30_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_30  =: monad define
  Description@.1 ('allergic to everything')
  Order@.1 (30)

  NB. item     =. 'chocolate'
  NB. score    =. 255
  NB. expected =. 1
  assert 1 -: 'chocolate' allergic_to 255
)

allergies_test_31_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_31  =: monad define
  Description@.1 ('not allergic to anything')
  Order@.1 (31)

  NB. item     =. 'pollen'
  NB. score    =. 0
  NB. expected =. 0
  assert 0 -: 'pollen' allergic_to 0
)

allergies_test_32_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_32  =: monad define
  Description@.1 ('allergic only to pollen')
  Order@.1 (32)

  NB. item     =. 'pollen'
  NB. score    =. 64
  NB. expected =. 1
  assert 1 -: 'pollen' allergic_to 64
)

allergies_test_33_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_33  =: monad define
  Description@.1 ('allergic to pollen and something else')
  Order@.1 (33)

  NB. item     =. 'pollen'
  NB. score    =. 224
  NB. expected =. 1
  assert 1 -: 'pollen' allergic_to 224
)

allergies_test_34_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_34  =: monad define
  Description@.1 ('allergic to something, but not pollen')
  Order@.1 (34)

  NB. item     =. 'pollen'
  NB. score    =. 160
  NB. expected =. 0
  assert 0 -: 'pollen' allergic_to 160
)

allergies_test_35_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_35  =: monad define
  Description@.1 ('allergic to everything')
  Order@.1 (35)

  NB. item     =. 'pollen'
  NB. score    =. 255
  NB. expected =. 1
  assert 1 -: 'pollen' allergic_to 255
)

allergies_test_36_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_36  =: monad define
  Description@.1 ('not allergic to anything')
  Order@.1 (36)

  NB. item     =. 'cats'
  NB. score    =. 0
  NB. expected =. 0
  assert 0 -: 'cats' allergic_to 0
)

allergies_test_37_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_37  =: monad define
  Description@.1 ('allergic only to cats')
  Order@.1 (37)

  NB. item     =. 'cats'
  NB. score    =. 128
  NB. expected =. 1
  assert 1 -: 'cats' allergic_to 128
)

allergies_test_38_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_38  =: monad define
  Description@.1 ('allergic to cats and something else')
  Order@.1 (38)

  NB. item     =. 'cats'
  NB. score    =. 192
  NB. expected =. 1
  assert 1 -: 'cats' allergic_to 192
)

allergies_test_39_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_39  =: monad define
  Description@.1 ('allergic to something, but not cats')
  Order@.1 (39)

  NB. item     =. 'cats'
  NB. score    =. 64
  NB. expected =. 0
  assert 0 -: 'cats' allergic_to 64
)

allergies_test_40_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_40  =: monad define
  Description@.1 ('allergic to everything')
  Order@.1 (40)

  NB. item     =. 'cats'
  NB. score    =. 255
  NB. expected =. 1
  assert 1 -: 'cats' allergic_to 255
)

allergies_test_41_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_41  =: monad define
  Description@.1 ('no allergies')
  Order@.1 (41)

  NB. score    =. 0
  NB. expected =. ''
  assert '' -: list 0
)

allergies_test_42_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_42  =: monad define
  Description@.1 ('just eggs')
  Order@.1 (42)

  NB. score    =. 1
  NB. expected =. (,<'eggs')
  assert (,<'eggs') -: list 1
)

allergies_test_43_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_43  =: monad define
  Description@.1 ('just peanuts')
  Order@.1 (43)

  NB. score    =. 2
  NB. expected =. (,<'peanuts')
  assert (,<'peanuts') -: list 2
)

allergies_test_44_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_44  =: monad define
  Description@.1 ('just strawberries')
  Order@.1 (44)

  NB. score    =. 8
  NB. expected =. (,<'strawberries')
  assert (,<'strawberries') -: list 8
)

allergies_test_45_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_45  =: monad define
  Description@.1 ('eggs and peanuts')
  Order@.1 (45)

  NB. score    =. 3
  NB. expected =. 'eggs';'peanuts'
  assert ('eggs';'peanuts') -: list 3
)

allergies_test_46_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_46  =: monad define
  Description@.1 ('more than eggs but not peanuts')
  Order@.1 (46)

  NB. score    =. 5
  NB. expected =. 'eggs';'shellfish'
  assert ('eggs';'shellfish') -: list 5
)

allergies_test_47_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_47  =: monad define
  Description@.1 ('lots of stuff')
  Order@.1 (47)

  NB. score    =. 248
  NB. expected =. 'strawberries';'tomatoes';'chocolate';'pollen';'cats'
  assert ('strawberries';'tomatoes';'chocolate';'pollen';'cats') -: list 248
)

allergies_test_48_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_48  =: monad define
  Description@.1 ('everything')
  Order@.1 (48)

  NB. score    =. 255
  NB. expected =. 'eggs';'peanuts';'shellfish';'strawberries';'tomatoes';'chocolate';'pollen';'cats'
  assert ('eggs';'peanuts';'shellfish';'strawberries';'tomatoes';'chocolate';'pollen';'cats') -: list 255
)

allergies_test_49_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_49  =: monad define
  Description@.1 ('no allergen score parts')
  Order@.1 (49)

  NB. score    =. 509
  NB. expected =. 'eggs';'shellfish';'strawberries';'tomatoes';'chocolate';'pollen';'cats'
  assert ('eggs';'shellfish';'strawberries';'tomatoes';'chocolate';'pollen';'cats') -: list 509
)

allergies_test_50_ignore=: 1 NB. Change this value to 0 to run this test
test_allergies_test_50  =: monad define
  Description@.1 ('no allergen score parts without highest valid score')
  Order@.1 (50)

  NB. score    =. 257
  NB. expected =. (,<'eggs')
  assert (,<'eggs') -: list 257
)

