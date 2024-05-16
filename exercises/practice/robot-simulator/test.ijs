load 'robot-simulator.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


robot_simulator_test_01_ignore=: 0
test_robot_simulator_test_01  =: monad define
  Description@.1 ('at origin facing north')
  Order@.1 (1) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'north'

  r =. (0 0;'north') conew 'robot'
  assert 0 0 -:&> position__r
  assert 'north' -:&> direction__r
)

robot_simulator_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_02  =: monad define
  Description@.1 ('at negative position facing south')
  Order@.1 (2) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. _1 _1
  NB. direction=. 'south'

  r =. (_1 _1;'south') conew 'robot'
  assert _1 _1 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_03  =: monad define
  Description@.1 ('changes north to east')
  Order@.1 (3) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'north'
  NB. instructions=. 'R'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'east'


  r =. (0 0;'north') conew 'robot'
  move__r 'R'
  assert 0 0 -:&> position__r
  assert 'east' -:&> direction__r
)

robot_simulator_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_04  =: monad define
  Description@.1 ('changes east to south')
  Order@.1 (4) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'east'
  NB. instructions=. 'R'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'south'


  r =. (0 0;'east') conew 'robot'
  move__r 'R'
  assert 0 0 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_05  =: monad define
  Description@.1 ('changes south to west')
  Order@.1 (5) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'south'
  NB. instructions=. 'R'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'west'


  r =. (0 0;'south') conew 'robot'
  move__r 'R'
  assert 0 0 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_06  =: monad define
  Description@.1 ('changes west to north')
  Order@.1 (6) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'west'
  NB. instructions=. 'R'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'north'


  r =. (0 0;'west') conew 'robot'
  move__r 'R'
  assert 0 0 -:&> position__r
  assert 'north' -:&> direction__r
)

robot_simulator_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_07  =: monad define
  Description@.1 ('changes north to west')
  Order@.1 (7) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'north'
  NB. instructions=. 'L'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'west'


  r =. (0 0;'north') conew 'robot'
  move__r 'L'
  assert 0 0 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_08  =: monad define
  Description@.1 ('changes west to south')
  Order@.1 (8) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'west'
  NB. instructions=. 'L'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'south'


  r =. (0 0;'west') conew 'robot'
  move__r 'L'
  assert 0 0 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_09  =: monad define
  Description@.1 ('changes south to east')
  Order@.1 (9) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'south'
  NB. instructions=. 'L'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'east'


  r =. (0 0;'south') conew 'robot'
  move__r 'L'
  assert 0 0 -:&> position__r
  assert 'east' -:&> direction__r
)

robot_simulator_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_10  =: monad define
  Description@.1 ('changes east to north')
  Order@.1 (10) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'east'
  NB. instructions=. 'L'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'north'


  r =. (0 0;'east') conew 'robot'
  move__r 'L'
  assert 0 0 -:&> position__r
  assert 'north' -:&> direction__r
)

robot_simulator_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_11  =: monad define
  Description@.1 ('facing north increments Y')
  Order@.1 (11) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'north'
  NB. instructions=. 'A'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 1
  NB. direction=. 'north'


  r =. (0 0;'north') conew 'robot'
  move__r 'A'
  assert 0 1 -:&> position__r
  assert 'north' -:&> direction__r
)

robot_simulator_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_12  =: monad define
  Description@.1 ('facing south decrements Y')
  Order@.1 (12) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'south'
  NB. instructions=. 'A'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 0 _1
  NB. direction=. 'south'


  r =. (0 0;'south') conew 'robot'
  move__r 'A'
  assert 0 _1 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_13  =: monad define
  Description@.1 ('facing east increments X')
  Order@.1 (13) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'east'
  NB. instructions=. 'A'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 1 0
  NB. direction=. 'east'


  r =. (0 0;'east') conew 'robot'
  move__r 'A'
  assert 1 0 -:&> position__r
  assert 'east' -:&> direction__r
)

robot_simulator_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_14  =: monad define
  Description@.1 ('facing west decrements X')
  Order@.1 (14) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'west'
  NB. instructions=. 'A'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. _1 0
  NB. direction=. 'west'


  r =. (0 0;'west') conew 'robot'
  move__r 'A'
  assert _1 0 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_15  =: monad define
  Description@.1 ('moving east and north from README')
  Order@.1 (15) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 7 3
  NB. direction=. 'north'
  NB. instructions=. 'RAALAL'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 9 4
  NB. direction=. 'west'


  r =. (7 3;'north') conew 'robot'
  move__r 'RAALAL'
  assert 9 4 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_16  =: monad define
  Description@.1 ('moving west and north')
  Order@.1 (16) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 0 0
  NB. direction=. 'north'
  NB. instructions=. 'LAAARALA'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. _4 1
  NB. direction=. 'west'


  r =. (0 0;'north') conew 'robot'
  move__r 'LAAARALA'
  assert _4 1 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_17  =: monad define
  Description@.1 ('moving west and south')
  Order@.1 (17) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 2 _7
  NB. direction=. 'east'
  NB. instructions=. 'RRAAAAALA'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. _3 _8
  NB. direction=. 'south'


  r =. (2 _7;'east') conew 'robot'
  move__r 'RRAAAAALA'
  assert _3 _8 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_18  =: monad define
  Description@.1 ('moving east and north')
  Order@.1 (18) 

  NB. initial state
  NB. ==============================
  NB. 'x y' =. position =. 8 4
  NB. direction=. 'south'
  NB. instructions=. 'LAAARRRALLLL'

  NB. expected
  NB. ==============================
  NB. 'x y' =. position =. 11 5
  NB. direction=. 'north'


  r =. (8 4;'south') conew 'robot'
  move__r 'LAAARRRALLLL'
  assert 11 5 -:&> position__r
  assert 'north' -:&> direction__r
)

