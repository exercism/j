load 'dnd-character.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


dnd_character_test_01_ignore=: 0
test_dnd_character_test_01  =: monad define
  Description@.1 ('ability modifier for score 3 is -4')
  Order@.1 (1)
  Task@.1 (1)

  score    =. 3
  expected =. _4
  assert expected -: modifier score
)

dnd_character_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_02  =: monad define
  Description@.1 ('ability modifier for score 4 is -3')
  Order@.1 (2)
  Task@.1 (1)

  score    =. 4
  expected =. _3
  assert expected -: modifier score
)

dnd_character_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_03  =: monad define
  Description@.1 ('ability modifier for score 5 is -3')
  Order@.1 (3)
  Task@.1 (1)

  score    =. 5
  expected =. _3
  assert expected -: modifier score
)

dnd_character_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_04  =: monad define
  Description@.1 ('ability modifier for score 6 is -2')
  Order@.1 (4)
  Task@.1 (1)

  score    =. 6
  expected =. _2
  assert expected -: modifier score
)

dnd_character_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_05  =: monad define
  Description@.1 ('ability modifier for score 7 is -2')
  Order@.1 (5)
  Task@.1 (1)

  score    =. 7
  expected =. _2
  assert expected -: modifier score
)

dnd_character_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_06  =: monad define
  Description@.1 ('ability modifier for score 8 is -1')
  Order@.1 (6)
  Task@.1 (1)

  score    =. 8
  expected =. _1
  assert expected -: modifier score
)

dnd_character_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_07  =: monad define
  Description@.1 ('ability modifier for score 9 is -1')
  Order@.1 (7)
  Task@.1 (1)

  score    =. 9
  expected =. _1
  assert expected -: modifier score
)

dnd_character_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_08  =: monad define
  Description@.1 ('ability modifier for score 10 is 0')
  Order@.1 (8)
  Task@.1 (1)

  score    =. 10
  expected =. 0
  assert expected -: modifier score
)

dnd_character_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_09  =: monad define
  Description@.1 ('ability modifier for score 11 is 0')
  Order@.1 (9)
  Task@.1 (1)

  score    =. 11
  expected =. 0
  assert expected -: modifier score
)

dnd_character_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_10  =: monad define
  Description@.1 ('ability modifier for score 12 is +1')
  Order@.1 (10)
  Task@.1 (1)

  score    =. 12
  expected =. 1
  assert expected -: modifier score
)

dnd_character_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_11  =: monad define
  Description@.1 ('ability modifier for score 13 is +1')
  Order@.1 (11)
  Task@.1 (1)

  score    =. 13
  expected =. 1
  assert expected -: modifier score
)

dnd_character_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_12  =: monad define
  Description@.1 ('ability modifier for score 14 is +2')
  Order@.1 (12)
  Task@.1 (1)

  score    =. 14
  expected =. 2
  assert expected -: modifier score
)

dnd_character_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_13  =: monad define
  Description@.1 ('ability modifier for score 15 is +2')
  Order@.1 (13)
  Task@.1 (1)

  score    =. 15
  expected =. 2
  assert expected -: modifier score
)

dnd_character_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_14  =: monad define
  Description@.1 ('ability modifier for score 16 is +3')
  Order@.1 (14)
  Task@.1 (1)

  score    =. 16
  expected =. 3
  assert expected -: modifier score
)

dnd_character_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_15  =: monad define
  Description@.1 ('ability modifier for score 17 is +3')
  Order@.1 (15)
  Task@.1 (1)

  score    =. 17
  expected =. 3
  assert expected -: modifier score
)

dnd_character_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_16  =: monad define
  Description@.1 ('ability modifier for score 18 is +4')
  Order@.1 (16)
  Task@.1 (1)

  score    =. 18
  expected =. 4
  assert expected -: modifier score
)

dnd_character_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_17  =: monad define
  Description@.1 ('random ability is within range')
  Order@.1 (17)
  Task@.1 (2)
  ability_within_range=. 3 {{ >:&u *. <:&v }} 18

  input=. ''
  assert ability_within_range ability ''
)


dnd_character_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_18  =: monad define
  Description@.1 ('random character is valid')
  Order@.1 (18)
  Task@.1 (3)
  ability_within_range=. 3 {{ >:&u *. <:&v }} 18
  
  input=. ''
  c    =. character ''

  assert ability_within_range STRENGTH
  assert ability_within_range DEXTERITY
  assert ability_within_range CONSTITUTION
  assert ability_within_range INTELLIGENCE
  assert ability_within_range WISDOM
  assert ability_within_range CHARISMA
)

dnd_character_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_19  =: monad define
  Description@.1 ('each ability is only calculated once')
  Order@.1 (19)
  Task@.1 (4)

  input=. ''
  c    =. character ''

  assert STRENGTH = STRENGTH
  assert DEXTERITY = DEXTERITY
  assert CONSTITUTION = CONSTITUTION
  assert INTELLIGENCE = INTELLIGENCE
  assert WISDOM = WISDOM
  assert CHARISMA = CHARISMA
  assert HITPOINTS = 10 + modifier CONSTITUTION
)
