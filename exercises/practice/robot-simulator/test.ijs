load 'robot-simulator.ijs'


robot_simulator_test_01_ignore=: 0
test_robot_simulator_test_01  =: monad define
  Description=: 'at origin facing north' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'north'

  r =. (0 0;'north') conew 'robot'
  assert 0 0 -:&> position__r
  assert 'north' -:&> direction__r
)

robot_simulator_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_02  =: monad define
  Description=: 'at negative position facing south' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. _1 _1
  NB. direction=. 'south'

  r =. (_1 _1;'south') conew 'robot'
  assert _1 _1 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_03  =: monad define
  Description=: 'changes north to east' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'north'
  NB. instructions=. 'R'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'east'


  r =. (0 0;'north') conew 'robot'
  move__r 'R'
  assert 0 0 -:&> position__r
  assert 'east' -:&> direction__r
)

robot_simulator_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_04  =: monad define
  Description=: 'changes east to south' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'east'
  NB. instructions=. 'R'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'south'


  r =. (0 0;'east') conew 'robot'
  move__r 'R'
  assert 0 0 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_05  =: monad define
  Description=: 'changes south to west' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'south'
  NB. instructions=. 'R'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'west'


  r =. (0 0;'south') conew 'robot'
  move__r 'R'
  assert 0 0 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_06  =: monad define
  Description=: 'changes west to north' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'west'
  NB. instructions=. 'R'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'north'


  r =. (0 0;'west') conew 'robot'
  move__r 'R'
  assert 0 0 -:&> position__r
  assert 'north' -:&> direction__r
)

robot_simulator_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_07  =: monad define
  Description=: 'changes north to west' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'north'
  NB. instructions=. 'L'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'west'


  r =. (0 0;'north') conew 'robot'
  move__r 'L'
  assert 0 0 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_08  =: monad define
  Description=: 'changes west to south' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'west'
  NB. instructions=. 'L'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'south'


  r =. (0 0;'west') conew 'robot'
  move__r 'L'
  assert 0 0 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_09  =: monad define
  Description=: 'changes south to east' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'south'
  NB. instructions=. 'L'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'east'


  r =. (0 0;'south') conew 'robot'
  move__r 'L'
  assert 0 0 -:&> position__r
  assert 'east' -:&> direction__r
)

robot_simulator_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_10  =: monad define
  Description=: 'changes east to north' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'east'
  NB. instructions=. 'L'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'north'


  r =. (0 0;'east') conew 'robot'
  move__r 'L'
  assert 0 0 -:&> position__r
  assert 'north' -:&> direction__r
)

robot_simulator_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_11  =: monad define
  Description=: 'facing north increments Y' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'north'
  NB. instructions=. 'A'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 1
  NB. direction=. 'north'


  r =. (0 0;'north') conew 'robot'
  move__r 'A'
  assert 0 1 -:&> position__r
  assert 'north' -:&> direction__r
)

robot_simulator_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_12  =: monad define
  Description=: 'facing south decrements Y' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'south'
  NB. instructions=. 'A'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 0 _1
  NB. direction=. 'south'


  r =. (0 0;'south') conew 'robot'
  move__r 'A'
  assert 0 _1 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_13  =: monad define
  Description=: 'facing east increments X' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'east'
  NB. instructions=. 'A'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 1 0
  NB. direction=. 'east'


  r =. (0 0;'east') conew 'robot'
  move__r 'A'
  assert 1 0 -:&> position__r
  assert 'east' -:&> direction__r
)

robot_simulator_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_14  =: monad define
  Description=: 'facing west decrements X' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'west'
  NB. instructions=. 'A'

  NB. expected
  NB. ==============================
  NB. 'x y'=. _1 0
  NB. direction=. 'west'


  r =. (0 0;'west') conew 'robot'
  move__r 'A'
  assert _1 0 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_15  =: monad define
  Description=: 'moving east and north from README' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 7 3
  NB. direction=. 'north'
  NB. instructions=. 'RAALAL'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 9 4
  NB. direction=. 'west'


  r =. (7 3;'north') conew 'robot'
  move__r 'RAALAL'
  assert 9 4 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_16  =: monad define
  Description=: 'moving west and north' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 0 0
  NB. direction=. 'north'
  NB. instructions=. 'LAAARALA'

  NB. expected
  NB. ==============================
  NB. 'x y'=. _4 1
  NB. direction=. 'west'


  r =. (0 0;'north') conew 'robot'
  move__r 'LAAARALA'
  assert _4 1 -:&> position__r
  assert 'west' -:&> direction__r
)

robot_simulator_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_17  =: monad define
  Description=: 'moving west and south' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 2 _7
  NB. direction=. 'east'
  NB. instructions=. 'RRAAAAALA'

  NB. expected
  NB. ==============================
  NB. 'x y'=. _3 _8
  NB. direction=. 'south'


  r =. (2 _7;'east') conew 'robot'
  move__r 'RRAAAAALA'
  assert _3 _8 -:&> position__r
  assert 'south' -:&> direction__r
)

robot_simulator_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_robot_simulator_test_18  =: monad define
  Description=: 'moving east and north' 

  NB. initial state
  NB. ==============================
  NB. 'x y'=. 8 4
  NB. direction=. 'south'
  NB. instructions=. 'LAAARRRALLLL'

  NB. expected
  NB. ==============================
  NB. 'x y'=. 11 5
  NB. direction=. 'north'


  r =. (8 4;'south') conew 'robot'
  move__r 'LAAARRRALLLL'
  assert 11 5 -:&> position__r
  assert 'north' -:&> direction__r
)

