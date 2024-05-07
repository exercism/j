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

  NB. score    =. 3
  NB. expected =. _4
  assert _4 -: modifier_character_ 3
)

dnd_character_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_02  =: monad define
  Description@.1 ('ability modifier for score 4 is -3')
  Order@.1 (2)
  Task@.1 (1)

  NB. score    =. 4
  NB. expected =. _3
  assert _3 -: modifier_character_ 4
)

dnd_character_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_03  =: monad define
  Description@.1 ('ability modifier for score 5 is -3')
  Order@.1 (3)
  Task@.1 (1)

  NB. score    =. 5
  NB. expected =. _3
  assert _3 -: modifier_character_ 5
)

dnd_character_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_04  =: monad define
  Description@.1 ('ability modifier for score 6 is -2')
  Order@.1 (4)
  Task@.1 (1)

  NB. score    =. 6
  NB. expected =. _2
  assert _2 -: modifier_character_ 6
)

dnd_character_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_05  =: monad define
  Description@.1 ('ability modifier for score 7 is -2')
  Order@.1 (5)
  Task@.1 (1)

  NB. score    =. 7
  NB. expected =. _2
  assert _2 -: modifier_character_ 7
)

dnd_character_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_06  =: monad define
  Description@.1 ('ability modifier for score 8 is -1')
  Order@.1 (6)
  Task@.1 (1)

  NB. score    =. 8
  NB. expected =. _1
  assert _1 -: modifier_character_ 8
)

dnd_character_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_07  =: monad define
  Description@.1 ('ability modifier for score 9 is -1')
  Order@.1 (7)
  Task@.1 (1)

  NB. score    =. 9
  NB. expected =. _1
  assert _1 -: modifier_character_ 9
)

dnd_character_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_08  =: monad define
  Description@.1 ('ability modifier for score 10 is 0')
  Order@.1 (8)
  Task@.1 (1)

  NB. score    =. 10
  NB. expected =. 0
  assert 0 -: modifier_character_ 10
)

dnd_character_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_09  =: monad define
  Description@.1 ('ability modifier for score 11 is 0')
  Order@.1 (9)
  Task@.1 (1)

  NB. score    =. 11
  NB. expected =. 0
  assert 0 -: modifier_character_ 11
)

dnd_character_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_10  =: monad define
  Description@.1 ('ability modifier for score 12 is +1')
  Order@.1 (10)
  Task@.1 (1)

  NB. score    =. 12
  NB. expected =. 1
  assert 1 -: modifier_character_ 12
)

dnd_character_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_11  =: monad define
  Description@.1 ('ability modifier for score 13 is +1')
  Order@.1 (11)
  Task@.1 (1)

  NB. score    =. 13
  NB. expected =. 1
  assert 1 -: modifier_character_ 13
)

dnd_character_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_12  =: monad define
  Description@.1 ('ability modifier for score 14 is +2')
  Order@.1 (12)
  Task@.1 (1)

  NB. score    =. 14
  NB. expected =. 2
  assert 2 -: modifier_character_ 14
)

dnd_character_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_13  =: monad define
  Description@.1 ('ability modifier for score 15 is +2')
  Order@.1 (13)
  Task@.1 (1)

  NB. score    =. 15
  NB. expected =. 2
  assert 2 -: modifier_character_ 15
)

dnd_character_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_14  =: monad define
  Description@.1 ('ability modifier for score 16 is +3')
  Order@.1 (14)
  Task@.1 (1)

  NB. score    =. 16
  NB. expected =. 3
  assert 3 -: modifier_character_ 16
)

dnd_character_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_15  =: monad define
  Description@.1 ('ability modifier for score 17 is +3')
  Order@.1 (15)
  Task@.1 (1)

  NB. score    =. 17
  NB. expected =. 3
  assert 3 -: modifier_character_ 17
)

dnd_character_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_16  =: monad define
  Description@.1 ('ability modifier for score 18 is +4')
  Order@.1 (16)
  Task@.1 (1)

  NB. score    =. 18
  NB. expected =. 4
  assert 4 -: modifier_character_ 18
)

dnd_character_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_17  =: monad define
  Description@.1 ('random ability is within range')
  Order@.1 (17)
  Task@.1 (2)
  ability_within_range=. 3 {{ >:&u *. <:&v }} 18

  assert ability_within_range ability_character_ ''
)


dnd_character_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_18  =: monad define
  Description@.1 ('random character is valid')
  Order@.1 (18)
  Task@.1 (3)
  ability_within_range=. 3 {{ >:&u *. <:&v }} 18
  
  c=. '' conew 'character'

  assert ability_within_range STRENGTH__c
  assert ability_within_range DEXTERITY__c
  assert ability_within_range CONSTITUTION__c
  assert ability_within_range INTELLIGENCE__c
  assert ability_within_range WISDOM__c
  assert ability_within_range CHARISMA__c
)

dnd_character_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_dnd_character_test_19  =: monad define
  Description@.1 ('each ability is only calculated once')
  Order@.1 (19)
  Task@.1 (4)

  c=. '' conew 'character'

  assert STRENGTH__c = STRENGTH__c
  assert DEXTERITY__c = DEXTERITY__c
  assert CONSTITUTION__c = CONSTITUTION__c
  assert INTELLIGENCE__c = INTELLIGENCE__c
  assert WISDOM__c = WISDOM__c
  assert CHARISMA__c = CHARISMA__c
  assert HITPOINTS__c = 10 + modifier_character_ CONSTITUTION__c
)
