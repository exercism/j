load 'alphametics.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


alphametics_test_01_ignore=: 0
test_alphametics_test_01  =: monad define
  Description@.1 ('puzzle with three letters')
  Order@.1 (1)

  NB. puzzle=. 'I + BB == ILL'
  NB. expected=. 2 3$(,'I');(,'B');(,'L');1;9;0
  assert (2 3$(,'I');(,'B');(,'L');1;9;0) -: solve 'I + BB == ILL'
)

alphametics_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_02  =: monad define
  Description@.1 ('solution must have unique value for each letter')
  Order@.1 (2)

  NB. puzzle=. 'A == B'
  NB. expected=. 'json_null'
  assert 'json_null' -: solve 'A == B'
)

alphametics_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_03  =: monad define
  Description@.1 ('leading zero solution is invalid')
  Order@.1 (3)

  NB. puzzle=. 'ACA + DD == BD'
  NB. expected=. 'json_null'
  assert 'json_null' -: solve 'ACA + DD == BD'
)

alphametics_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_04  =: monad define
  Description@.1 ('puzzle with two digits final carry')
  Order@.1 (4)

  NB. puzzle=. 'A + A + A + A + A + A + A + A + A + A + A + B == BCC'
  NB. expected=. 2 3$(,'A');(,'B');(,'C');9;1;0
  assert (2 3$(,'A');(,'B');(,'C');9;1;0) -: solve 'A + A + A + A + A + A + A + A + A + A + A + B == BCC'
)

alphametics_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_05  =: monad define
  Description@.1 ('puzzle with four letters')
  Order@.1 (5)

  NB. puzzle=. 'AS + A == MOM'
  NB. expected=. 2 4$(,'A');(,'S');(,'M');(,'O');9;2;1;0
  assert (2 4$(,'A');(,'S');(,'M');(,'O');9;2;1;0) -: solve 'AS + A == MOM'
)

alphametics_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_06  =: monad define
  Description@.1 ('puzzle with six letters')
  Order@.1 (6)

  NB. puzzle=. 'NO + NO + TOO == LATE'
  NB. expected=. 2 6$(,'N');(,'O');(,'T');(,'L');(,'A');(,'E');7;4;9;1;0;2
  assert (2 6$(,'N');(,'O');(,'T');(,'L');(,'A');(,'E');7;4;9;1;0;2) -: solve 'NO + NO + TOO == LATE'
)

alphametics_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_07  =: monad define
  Description@.1 ('puzzle with seven letters')
  Order@.1 (7)

  NB. puzzle=. 'HE + SEES + THE == LIGHT'
  NB. expected=. 2 7$(,'E');(,'G');(,'H');(,'I');(,'L');(,'S');(,'T');4;2;5;0;1;9;7
  assert (2 7$(,'E');(,'G');(,'H');(,'I');(,'L');(,'S');(,'T');4;2;5;0;1;9;7) -: solve 'HE + SEES + THE == LIGHT'
)

alphametics_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_08  =: monad define
  Description@.1 ('puzzle with eight letters')
  Order@.1 (8)

  NB. puzzle=. 'SEND + MORE == MONEY'
  NB. expected=. 2 8$(,'S');(,'E');(,'N');(,'D');(,'M');(,'O');(,'R');(,'Y');9;5;6;7;1;0;8;2
  assert (2 8$(,'S');(,'E');(,'N');(,'D');(,'M');(,'O');(,'R');(,'Y');9;5;6;7;1;0;8;2) -: solve 'SEND + MORE == MONEY'
)

alphametics_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_09  =: monad define
  Description@.1 ('puzzle with ten letters')
  Order@.1 (9)

  NB. puzzle=. 'AND + A + STRONG + OFFENSE + AS + A + GOOD == DEFENSE'
  NB. expected=. 2 10$(,'A');(,'D');(,'E');(,'F');(,'G');(,'N');(,'O');(,'R');(,'S');(,'T');5;3;4;7;8;0;2;1;6;9
  assert (2 10$(,'A');(,'D');(,'E');(,'F');(,'G');(,'N');(,'O');(,'R');(,'S');(,'T');5;3;4;7;8;0;2;1;6;9) -: solve 'AND + A + STRONG + OFFENSE + AS + A + GOOD == DEFENSE'
)

alphametics_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_alphametics_test_10  =: monad define
  Description@.1 ('puzzle with ten letters and 199 addends')
  Order@.1 (10)

  NB. puzzle=. 'THIS + A + FIRE + THEREFORE + FOR + ALL + HISTORIES + I + TELL + A + TALE + THAT + FALSIFIES + ITS + TITLE + TIS + A + LIE + THE + TALE + OF + THE + LAST + FIRE + HORSES + LATE + AFTER + THE + FIRST + FATHERS + FORESEE + THE + HORRORS + THE + LAST + FREE + TROLL + TERRIFIES + THE + HORSES + OF + FIRE + THE + TROLL + RESTS + AT + THE + HOLE + OF + LOSSES + IT + IS + THERE + THAT + SHE + STORES + ROLES + OF + LEATHERS + AFTER + SHE + SATISFIES + HER + HATE + OFF + THOSE + FEARS + A + TASTE + RISES + AS + SHE + HEARS + THE + LEAST + FAR + HORSE + THOSE + FAST + HORSES + THAT + FIRST + HEAR + THE + TROLL + FLEE + OFF + TO + THE + FOREST + THE + HORSES + THAT + ALERTS + RAISE + THE + STARES + OF + THE + OTHERS + AS + THE + TROLL + ASSAILS + AT + THE + TOTAL + SHIFT + HER + TEETH + TEAR + HOOF + OFF + TORSO + AS + THE + LAST + HORSE + FORFEITS + ITS + LIFE + THE + FIRST + FATHERS + HEAR + OF + THE + HORRORS + THEIR + FEARS + THAT + THE + FIRES + FOR + THEIR + FEASTS + ARREST + AS + THE + FIRST + FATHERS + RESETTLE + THE + LAST + OF + THE + FIRE + HORSES + THE + LAST + TROLL + HARASSES + THE + FOREST + HEART + FREE + AT + LAST + OF + THE + LAST + TROLL + ALL + OFFER + THEIR + FIRE + HEAT + TO + THE + ASSISTERS + FAR + OFF + THE + TROLL + FASTS + ITS + LIFE + SHORTER + AS + STARS + RISE + THE + HORSES + REST + SAFE + AFTER + ALL + SHARE + HOT + FISH + AS + THEIR + AFFILIATES + TAILOR + A + ROOFS + FOR + THEIR + SAFE == FORTRESSES'
  NB. expected=. 2 10$(,'A');(,'E');(,'F');(,'H');(,'I');(,'L');(,'O');(,'R');(,'S');(,'T');1;0;5;8;7;2;6;3;4;9
  assert (2 10$(,'A');(,'E');(,'F');(,'H');(,'I');(,'L');(,'O');(,'R');(,'S');(,'T');1;0;5;8;7;2;6;3;4;9) -: solve 'THIS + A + FIRE + THEREFORE + FOR + ALL + HISTORIES + I + TELL + A + TALE + THAT + FALSIFIES + ITS + TITLE + TIS + A + LIE + THE + TALE + OF + THE + LAST + FIRE + HORSES + LATE + AFTER + THE + FIRST + FATHERS + FORESEE + THE + HORRORS + THE + LAST + FREE + TROLL + TERRIFIES + THE + HORSES + OF + FIRE + THE + TROLL + RESTS + AT + THE + HOLE + OF + LOSSES + IT + IS + THERE + THAT + SHE + STORES + ROLES + OF + LEATHERS + AFTER + SHE + SATISFIES + HER + HATE + OFF + THOSE + FEARS + A + TASTE + RISES + AS + SHE + HEARS + THE + LEAST + FAR + HORSE + THOSE + FAST + HORSES + THAT + FIRST + HEAR + THE + TROLL + FLEE + OFF + TO + THE + FOREST + THE + HORSES + THAT + ALERTS + RAISE + THE + STARES + OF + THE + OTHERS + AS + THE + TROLL + ASSAILS + AT + THE + TOTAL + SHIFT + HER + TEETH + TEAR + HOOF + OFF + TORSO + AS + THE + LAST + HORSE + FORFEITS + ITS + LIFE + THE + FIRST + FATHERS + HEAR + OF + THE + HORRORS + THEIR + FEARS + THAT + THE + FIRES + FOR + THEIR + FEASTS + ARREST + AS + THE + FIRST + FATHERS + RESETTLE + THE + LAST + OF + THE + FIRE + HORSES + THE + LAST + TROLL + HARASSES + THE + FOREST + HEART + FREE + AT + LAST + OF + THE + LAST + TROLL + ALL + OFFER + THEIR + FIRE + HEAT + TO + THE + ASSISTERS + FAR + OFF + THE + TROLL + FASTS + ITS + LIFE + SHORTER + AS + STARS + RISE + THE + HORSES + REST + SAFE + AFTER + ALL + SHARE + HOT + FISH + AS + THEIR + AFFILIATES + TAILOR + A + ROOFS + FOR + THEIR + SAFE == FORTRESSES'
)
